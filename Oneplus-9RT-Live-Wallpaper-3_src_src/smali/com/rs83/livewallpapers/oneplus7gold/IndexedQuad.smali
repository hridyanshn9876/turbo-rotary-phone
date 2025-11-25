.class public Lcom/rs83/livewallpapers/oneplus7gold/IndexedQuad;
.super Ljava/lang/Object;
.source "IndexedQuad.java"


# instance fields
.field private mIndexBufferHandle:I

.field private mVertexBufferHandle:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/IndexedQuad;->mVertexBufferHandle:I

    .line 29
    iput v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/IndexedQuad;->mIndexBufferHandle:I

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 75
    iget v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/IndexedQuad;->mVertexBufferHandle:I

    if-lez v1, :cond_0

    .line 76
    const/4 v1, 0x2

    new-array v0, v1, [I

    iget v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/IndexedQuad;->mVertexBufferHandle:I

    aput v1, v0, v3

    const/4 v1, 0x1

    iget v2, p0, Lcom/rs83/livewallpapers/oneplus7gold/IndexedQuad;->mIndexBufferHandle:I

    aput v2, v0, v1

    .line 77
    .local v0, "handles":[I
    array-length v1, v0

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES30;->glDeleteBuffers(I[II)V

    .line 79
    .end local v0    # "handles":[I
    :cond_0
    return-void
.end method

.method public getIndexBufferHandle()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/IndexedQuad;->mIndexBufferHandle:I

    return v0
.end method

.method public getVertexBufferHandle()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/IndexedQuad;->mVertexBufferHandle:I

    return v0
.end method

.method public init()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rs83/livewallpapers/oneplus7gold/Utils$InvalidHandleException;
        }
    .end annotation

    .prologue
    const v12, 0x88e4

    const/4 v7, 0x2

    const v11, 0x8893

    const v10, 0x8892

    const/4 v9, 0x0

    .line 37
    new-array v0, v7, [I

    fill-array-data v0, :array_0

    .line 38
    .local v0, "handles":[I
    invoke-static {v7, v0, v9}, Landroid/opengl/GLES30;->glGenBuffers(I[II)V

    .line 39
    aget v7, v0, v9

    const-string v8, "VertexBuffer"

    invoke-static {v7, v8}, Lcom/rs83/livewallpapers/oneplus7gold/Utils;->verifyHandle(ILjava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/rs83/livewallpapers/oneplus7gold/IndexedQuad;->mVertexBufferHandle:I

    .line 40
    const/4 v7, 0x1

    aget v7, v0, v7

    const-string v8, "IndexBuffer"

    invoke-static {v7, v8}, Lcom/rs83/livewallpapers/oneplus7gold/Utils;->verifyHandle(ILjava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/rs83/livewallpapers/oneplus7gold/IndexedQuad;->mIndexBufferHandle:I

    .line 42
    const/16 v7, 0x14

    new-array v5, v7, [F

    fill-array-data v5, :array_1

    .line 49
    .local v5, "vertexData":[F
    iget v7, p0, Lcom/rs83/livewallpapers/oneplus7gold/IndexedQuad;->mVertexBufferHandle:I

    invoke-static {v10, v7}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    .line 50
    array-length v7, v5

    mul-int/lit8 v4, v7, 0x4

    .line 51
    .local v4, "vbSize":I
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 52
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    .line 53
    .local v6, "vertices":Ljava/nio/FloatBuffer;
    invoke-virtual {v6, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 54
    invoke-virtual {v6, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 55
    invoke-static {v10, v4, v6, v12}, Landroid/opengl/GLES30;->glBufferData(IILjava/nio/Buffer;I)V

    .line 56
    invoke-static {v10, v9}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    .line 59
    const/4 v7, 0x6

    new-array v2, v7, [S

    fill-array-data v2, :array_2

    .line 60
    .local v2, "indexData":[S
    iget v7, p0, Lcom/rs83/livewallpapers/oneplus7gold/IndexedQuad;->mIndexBufferHandle:I

    invoke-static {v11, v7}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    .line 61
    array-length v7, v2

    mul-int/lit8 v1, v7, 0x2

    .line 62
    .local v1, "ibSize":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 63
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v3

    .line 64
    .local v3, "indices":Ljava/nio/ShortBuffer;
    invoke-virtual {v3, v2}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 65
    invoke-virtual {v3, v9}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 66
    invoke-static {v11, v1, v3, v12}, Landroid/opengl/GLES30;->glBufferData(IILjava/nio/Buffer;I)V

    .line 68
    invoke-static {v11, v9}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    .line 69
    return-void

    .line 37
    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data

    .line 42
    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
    .end array-data

    .line 59
    :array_2
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x0s
        0x2s
        0x3s
    .end array-data
.end method

.method public render()V
    .locals 4

    .prologue
    .line 86
    const/4 v0, 0x4

    const/4 v1, 0x6

    const/16 v2, 0x1403

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES30;->glDrawElements(IIII)V

    .line 87
    return-void
.end method
