.class public Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;
.super Lcom/rs83/livewallpapers/oneplus7gold/Shader;
.source "VideoShader.java"


# static fields
.field private static final BACKUP_BITMAP_NAME:Ljava/lang/String; = "backup.jpg"

.field private static final sBackupTransform:[F


# instance fields
.field private mBackupTextureHandle:I

.field private mBackupTextureLocation:I

.field private final mContext:Landroid/content/Context;

.field private mCrossFadeLocation:I

.field private mTextureLocation:I

.field private mUseBackup:Z

.field private mUvTransformLocation:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 41
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;->sBackupTransform:[F

    .line 42
    sget-object v0, Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;->sBackupTransform:[F

    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 43
    sget-object v0, Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;->sBackupTransform:[F

    const/high16 v1, -0x41000000    # -0.5f

    invoke-static {v0, v3, v2, v1, v2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 44
    sget-object v0, Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;->sBackupTransform:[F

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v3, v4, v1, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 45
    sget-object v0, Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;->sBackupTransform:[F

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, v3, v2, v1, v2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    const v0, 0x7f040001

    invoke-static {p1, v0}, Lcom/rs83/livewallpapers/oneplus7gold/Utils;->loadStringFromAssetFile(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x7f040000

    .line 92
    invoke-static {p1, v1}, Lcom/rs83/livewallpapers/oneplus7gold/Utils;->loadStringFromAssetFile(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-direct {p0, v0, v1}, Lcom/rs83/livewallpapers/oneplus7gold/Shader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;->mBackupTextureHandle:I

    .line 93
    iput-object p1, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;->mContext:Landroid/content/Context;

    .line 94
    return-void
.end method

.method private activateBackup()V
    .locals 2

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;->initBackup()V

    .line 183
    const/16 v1, 0x10

    new-array v0, v1, [F

    .line 184
    .local v0, "identity":[F
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 185
    invoke-virtual {p0, v0}, Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;->setUvTransform([F)V

    .line 186
    return-void
.end method

.method private cleanBackup()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 127
    iget v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;->mBackupTextureHandle:I

    if-le v0, v2, :cond_0

    .line 128
    new-array v0, v4, [I

    iget v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;->mBackupTextureHandle:I

    aput v1, v0, v3

    invoke-static {v4, v0, v3}, Landroid/opengl/GLES30;->glDeleteTextures(I[II)V

    .line 129
    iput v2, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;->mBackupTextureHandle:I

    .line 131
    :cond_0
    return-void
.end method

.method private deactivateBackup()V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;->cleanBackup()V

    .line 193
    return-void
.end method

.method private initBackup()V
    .locals 9

    .prologue
    const/16 v8, 0x2600

    const/4 v7, -0x1

    const/16 v6, 0xde1

    const/4 v5, 0x0

    .line 199
    iget v3, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;->mBackupTextureHandle:I

    if-le v3, v7, :cond_0

    .line 222
    :goto_0
    return-void

    .line 205
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "backup.jpg"

    invoke-static {v3, v4}, Lcom/rs83/livewallpapers/oneplus7gold/Utils;->loadTexture(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Lcom/rs83/livewallpapers/oneplus7gold/Utils$BitmapNotLoadedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 210
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x1

    new-array v2, v3, [I

    aput v7, v2, v5

    .line 211
    .local v2, "handles":[I
    array-length v3, v2

    invoke-static {v3, v2, v5}, Landroid/opengl/GLES30;->glGenTextures(I[II)V

    .line 212
    aget v3, v2, v5

    iput v3, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;->mBackupTextureHandle:I

    .line 214
    const v3, 0x84c0

    invoke-static {v3}, Landroid/opengl/GLES30;->glActiveTexture(I)V

    .line 215
    iget v3, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;->mBackupTextureHandle:I

    invoke-static {v6, v3}, Landroid/opengl/GLES30;->glBindTexture(II)V

    .line 216
    const/16 v3, 0x2801

    invoke-static {v6, v3, v8}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    .line 218
    const/16 v3, 0x2800

    invoke-static {v6, v3, v8}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    .line 220
    invoke-static {v6, v5, v0, v5}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 221
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 206
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "handles":[I
    :catch_0
    move-exception v1

    .line 207
    .local v1, "e":Lcom/rs83/livewallpapers/oneplus7gold/Utils$BitmapNotLoadedException;
    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized bind([F)V
    .locals 5
    .param p1, "transform"    # [F

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/rs83/livewallpapers/oneplus7gold/Shader;->bind([F)V

    .line 140
    iget v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;->mTextureLocation:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glUniform1i(II)V

    .line 141
    iget v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;->mCrossFadeLocation:I

    iget-boolean v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;->mUseBackup:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-static {v1, v0}, Landroid/opengl/GLES30;->glUniform1f(IF)V

    .line 143
    iget-boolean v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;->mUseBackup:Z

    if-eqz v0, :cond_0

    .line 144
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES30;->glActiveTexture(I)V

    .line 145
    const/16 v0, 0xde1

    iget v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;->mBackupTextureHandle:I

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glBindTexture(II)V

    .line 146
    iget v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;->mBackupTextureLocation:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glUniform1i(II)V

    .line 147
    iget v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;->mUvTransformLocation:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v3, Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;->sBackupTransform:[F

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES30;->glUniformMatrix4fv(IIZ[FI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :cond_0
    monitor-exit p0

    return-void

    .line 141
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clean()V
    .locals 1

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/rs83/livewallpapers/oneplus7gold/Shader;->clean()V

    .line 120
    invoke-direct {p0}, Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;->cleanBackup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public init(Lcom/rs83/livewallpapers/oneplus7gold/IndexedQuad;)V
    .locals 2
    .param p1, "quad"    # Lcom/rs83/livewallpapers/oneplus7gold/IndexedQuad;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rs83/livewallpapers/oneplus7gold/Utils$InvalidHandleException;,
            Lcom/rs83/livewallpapers/oneplus7gold/Shader$ShaderCompilationException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/rs83/livewallpapers/oneplus7gold/Shader;->init(Lcom/rs83/livewallpapers/oneplus7gold/IndexedQuad;)V

    .line 104
    iget v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;->mProgram:I

    const-string v1, "uTexture"

    .line 105
    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    const-string v1, "inTexture"

    .line 104
    invoke-static {v0, v1}, Lcom/rs83/livewallpapers/oneplus7gold/Utils;->verifyHandle(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;->mTextureLocation:I

    .line 106
    iget v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;->mProgram:I

    const-string v1, "uUvTransform"

    .line 107
    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    const-string v1, "uUvTransform"

    .line 106
    invoke-static {v0, v1}, Lcom/rs83/livewallpapers/oneplus7gold/Utils;->verifyHandle(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;->mUvTransformLocation:I

    .line 108
    iget v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;->mProgram:I

    const-string v1, "uCrossFade"

    .line 109
    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    const-string v1, "uCrossFade"

    .line 108
    invoke-static {v0, v1}, Lcom/rs83/livewallpapers/oneplus7gold/Utils;->verifyHandle(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;->mCrossFadeLocation:I

    .line 110
    iget v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;->mProgram:I

    const-string v1, "uBackupTexture"

    .line 111
    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    const-string v1, "uBackupTexture"

    .line 110
    invoke-static {v0, v1}, Lcom/rs83/livewallpapers/oneplus7gold/Utils;->verifyHandle(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;->mBackupTextureLocation:I

    .line 112
    return-void
.end method

.method public setUvTransform([F)V
    .locals 3
    .param p1, "uvTransform"    # [F

    .prologue
    const/4 v2, 0x0

    .line 158
    iget v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;->mUvTransformLocation:I

    const/4 v1, 0x1

    invoke-static {v0, v1, v2, p1, v2}, Landroid/opengl/GLES30;->glUniformMatrix4fv(IIZ[FI)V

    .line 159
    return-void
.end method

.method public useBackup(Z)V
    .locals 1
    .param p1, "useBackup"    # Z

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;->mUseBackup:Z

    if-eq p1, v0, :cond_0

    .line 169
    if-eqz p1, :cond_1

    .line 170
    invoke-direct {p0}, Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;->activateBackup()V

    .line 174
    :goto_0
    iput-boolean p1, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;->mUseBackup:Z

    .line 176
    :cond_0
    return-void

    .line 172
    :cond_1
    invoke-direct {p0}, Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;->deactivateBackup()V

    goto :goto_0
.end method
