.class public Lcom/rs83/livewallpapers/oneplus7gold/Shader;
.super Ljava/lang/Object;
.source "Shader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rs83/livewallpapers/oneplus7gold/Shader$ShaderCompilationException;
    }
.end annotation


# instance fields
.field private final mFragmentShaderCode:Ljava/lang/String;

.field protected mProgram:I

.field private mTransformLocation:I

.field private mVao:I

.field private final mVertexShaderCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "vertexShaderCode"    # Ljava/lang/String;
    .param p2, "fragmentShaderCode"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/Shader;->mProgram:I

    .line 41
    iput v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/Shader;->mVao:I

    .line 46
    iput v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/Shader;->mTransformLocation:I

    .line 56
    iput-object p1, p0, Lcom/rs83/livewallpapers/oneplus7gold/Shader;->mVertexShaderCode:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/rs83/livewallpapers/oneplus7gold/Shader;->mFragmentShaderCode:Ljava/lang/String;

    .line 58
    return-void
.end method

.method private compileShader(ILjava/lang/String;)I
    .locals 5
    .param p1, "type"    # I
    .param p2, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rs83/livewallpapers/oneplus7gold/Utils$InvalidHandleException;,
            Lcom/rs83/livewallpapers/oneplus7gold/Shader$ShaderCompilationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 163
    invoke-static {p1}, Landroid/opengl/GLES30;->glCreateShader(I)I

    move-result v3

    invoke-static {v3, p2}, Lcom/rs83/livewallpapers/oneplus7gold/Utils;->verifyHandle(ILjava/lang/String;)I

    move-result v1

    .line 164
    .local v1, "handle":I
    invoke-static {v1, p2}, Landroid/opengl/GLES30;->glShaderSource(ILjava/lang/String;)V

    .line 165
    invoke-static {v1}, Landroid/opengl/GLES30;->glCompileShader(I)V

    .line 167
    const/4 v3, 0x1

    new-array v2, v3, [I

    const/4 v3, -0x1

    aput v3, v2, v4

    .line 168
    .local v2, "status":[I
    const v3, 0x8b81

    invoke-static {v1, v3, v2, v4}, Landroid/opengl/GLES30;->glGetShaderiv(II[II)V

    .line 169
    aget v3, v2, v4

    if-nez v3, :cond_0

    .line 170
    invoke-static {v1}, Landroid/opengl/GLES30;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "error":Ljava/lang/String;
    invoke-static {v1}, Landroid/opengl/GLES30;->glDeleteShader(I)V

    .line 172
    new-instance v3, Lcom/rs83/livewallpapers/oneplus7gold/Shader$ShaderCompilationException;

    invoke-direct {v3, v0}, Lcom/rs83/livewallpapers/oneplus7gold/Shader$ShaderCompilationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 175
    .end local v0    # "error":Ljava/lang/String;
    :cond_0
    return v1
.end method


# virtual methods
.method public bind([F)V
    .locals 3
    .param p1, "transform"    # [F

    .prologue
    const/4 v2, 0x0

    .line 138
    iget v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/Shader;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glUseProgram(I)V

    .line 139
    iget v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/Shader;->mVao:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    .line 140
    iget v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/Shader;->mTransformLocation:I

    const/4 v1, 0x1

    invoke-static {v0, v1, v2, p1, v2}, Landroid/opengl/GLES30;->glUniformMatrix4fv(IIZ[FI)V

    .line 141
    return-void
.end method

.method public clean()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 118
    iget v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/Shader;->mProgram:I

    if-lez v1, :cond_0

    .line 119
    iget v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/Shader;->mProgram:I

    invoke-static {v1}, Landroid/opengl/GLES30;->glDeleteProgram(I)V

    .line 120
    iput v2, p0, Lcom/rs83/livewallpapers/oneplus7gold/Shader;->mProgram:I

    .line 123
    :cond_0
    iget v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/Shader;->mVao:I

    if-lez v1, :cond_1

    .line 124
    const/4 v1, 0x1

    new-array v0, v1, [I

    iget v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/Shader;->mVao:I

    aput v1, v0, v3

    .line 125
    .local v0, "handles":[I
    array-length v1, v0

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES30;->glDeleteVertexArrays(I[II)V

    .line 126
    iput v2, p0, Lcom/rs83/livewallpapers/oneplus7gold/Shader;->mVao:I

    .line 129
    .end local v0    # "handles":[I
    :cond_1
    iput v2, p0, Lcom/rs83/livewallpapers/oneplus7gold/Shader;->mTransformLocation:I

    .line 130
    return-void
.end method

.method public init(Lcom/rs83/livewallpapers/oneplus7gold/IndexedQuad;)V
    .locals 10
    .param p1, "quad"    # Lcom/rs83/livewallpapers/oneplus7gold/IndexedQuad;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rs83/livewallpapers/oneplus7gold/Utils$InvalidHandleException;,
            Lcom/rs83/livewallpapers/oneplus7gold/Shader$ShaderCompilationException;
        }
    .end annotation

    .prologue
    const v9, 0x8892

    const/16 v2, 0x1406

    const/16 v4, 0x14

    const/4 v3, 0x0

    .line 70
    invoke-virtual {p0}, Lcom/rs83/livewallpapers/oneplus7gold/Shader;->clean()V

    .line 72
    const v1, 0x8b31

    iget-object v5, p0, Lcom/rs83/livewallpapers/oneplus7gold/Shader;->mVertexShaderCode:Ljava/lang/String;

    invoke-direct {p0, v1, v5}, Lcom/rs83/livewallpapers/oneplus7gold/Shader;->compileShader(ILjava/lang/String;)I

    move-result v8

    .line 73
    .local v8, "vsHandle":I
    const v1, 0x8b30

    iget-object v5, p0, Lcom/rs83/livewallpapers/oneplus7gold/Shader;->mFragmentShaderCode:Ljava/lang/String;

    invoke-direct {p0, v1, v5}, Lcom/rs83/livewallpapers/oneplus7gold/Shader;->compileShader(ILjava/lang/String;)I

    move-result v6

    .line 75
    .local v6, "fsHandle":I
    invoke-static {}, Landroid/opengl/GLES30;->glCreateProgram()I

    move-result v1

    const-string v5, "Program"

    invoke-static {v1, v5}, Lcom/rs83/livewallpapers/oneplus7gold/Utils;->verifyHandle(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/Shader;->mProgram:I

    .line 76
    iget v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/Shader;->mProgram:I

    invoke-static {v1, v8}, Landroid/opengl/GLES30;->glAttachShader(II)V

    .line 77
    iget v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/Shader;->mProgram:I

    invoke-static {v1, v6}, Landroid/opengl/GLES30;->glAttachShader(II)V

    .line 78
    iget v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/Shader;->mProgram:I

    invoke-static {v1}, Landroid/opengl/GLES30;->glLinkProgram(I)V

    .line 81
    iget v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/Shader;->mProgram:I

    invoke-static {v1, v8}, Landroid/opengl/GLES30;->glDetachShader(II)V

    .line 82
    iget v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/Shader;->mProgram:I

    invoke-static {v1, v6}, Landroid/opengl/GLES30;->glDetachShader(II)V

    .line 84
    invoke-static {v8}, Landroid/opengl/GLES30;->glDeleteShader(I)V

    .line 85
    invoke-static {v6}, Landroid/opengl/GLES30;->glDeleteShader(I)V

    .line 88
    iget v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/Shader;->mProgram:I

    invoke-static {v1}, Landroid/opengl/GLES30;->glUseProgram(I)V

    .line 89
    iget v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/Shader;->mProgram:I

    const-string v5, "uTransform"

    .line 90
    invoke-static {v1, v5}, Landroid/opengl/GLES30;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    const-string v5, "uTransform"

    .line 89
    invoke-static {v1, v5}, Lcom/rs83/livewallpapers/oneplus7gold/Utils;->verifyHandle(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/Shader;->mTransformLocation:I

    .line 92
    const/4 v1, 0x1

    new-array v7, v1, [I

    const/4 v1, -0x1

    aput v1, v7, v3

    .line 93
    .local v7, "handles":[I
    array-length v1, v7

    invoke-static {v1, v7, v3}, Landroid/opengl/GLES30;->glGenVertexArrays(I[II)V

    .line 94
    aget v1, v7, v3

    const-string v5, "VAO"

    invoke-static {v1, v5}, Lcom/rs83/livewallpapers/oneplus7gold/Utils;->verifyHandle(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/Shader;->mVao:I

    .line 97
    iget v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/Shader;->mVao:I

    invoke-static {v1}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    .line 98
    invoke-virtual {p1}, Lcom/rs83/livewallpapers/oneplus7gold/IndexedQuad;->getVertexBufferHandle()I

    move-result v1

    invoke-static {v9, v1}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    .line 99
    const v1, 0x8893

    invoke-virtual {p1}, Lcom/rs83/livewallpapers/oneplus7gold/IndexedQuad;->getIndexBufferHandle()I

    move-result v5

    invoke-static {v1, v5}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    .line 101
    iget v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/Shader;->mProgram:I

    const-string v5, "inPosition"

    .line 102
    invoke-static {v1, v5}, Landroid/opengl/GLES30;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    const-string v5, "inPosition"

    .line 101
    invoke-static {v1, v5}, Lcom/rs83/livewallpapers/oneplus7gold/Utils;->verifyHandle(ILjava/lang/String;)I

    move-result v0

    .line 103
    .local v0, "handle":I
    invoke-static {v0}, Landroid/opengl/GLES30;->glEnableVertexAttribArray(I)V

    .line 104
    const/4 v1, 0x3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES30;->glVertexAttribPointer(IIIZII)V

    .line 106
    iget v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/Shader;->mProgram:I

    const-string v5, "inUV"

    invoke-static {v1, v5}, Landroid/opengl/GLES30;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    const-string v5, "inUV"

    invoke-static {v1, v5}, Lcom/rs83/livewallpapers/oneplus7gold/Utils;->verifyHandle(ILjava/lang/String;)I

    move-result v0

    .line 107
    invoke-static {v0}, Landroid/opengl/GLES30;->glEnableVertexAttribArray(I)V

    .line 108
    const/4 v1, 0x2

    const/16 v5, 0xc

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES30;->glVertexAttribPointer(IIIZII)V

    .line 110
    invoke-static {v9, v3}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    .line 111
    invoke-static {v3}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    .line 112
    return-void
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    .line 149
    return-void
.end method
