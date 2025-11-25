.class public Lcom/rs83/livewallpapers/oneplus7gold/WallpaperRenderer;
.super Ljava/lang/Object;
.source "WallpaperRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field private mHeight:I

.field private mPortrait:Z

.field private final mQuad:Lcom/rs83/livewallpapers/oneplus7gold/IndexedQuad;

.field private mRotationChanged:Z

.field private final mSurfaceView:Landroid/opengl/GLSurfaceView;

.field private final mTransform:[F

.field private final mUnlockVideo:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;

.field private final mVideoShader:Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "surfaceView"    # Landroid/opengl/GLSurfaceView;
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/WallpaperRenderer;->mWidth:I

    .line 46
    iput v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/WallpaperRenderer;->mHeight:I

    .line 51
    iput-boolean v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/WallpaperRenderer;->mPortrait:Z

    .line 56
    iput-boolean v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/WallpaperRenderer;->mRotationChanged:Z

    .line 61
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/WallpaperRenderer;->mTransform:[F

    .line 84
    iput-object p2, p0, Lcom/rs83/livewallpapers/oneplus7gold/WallpaperRenderer;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 85
    new-instance v0, Lcom/rs83/livewallpapers/oneplus7gold/IndexedQuad;

    invoke-direct {v0}, Lcom/rs83/livewallpapers/oneplus7gold/IndexedQuad;-><init>()V

    iput-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/WallpaperRenderer;->mQuad:Lcom/rs83/livewallpapers/oneplus7gold/IndexedQuad;

    .line 86
    new-instance v0, Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;

    invoke-direct {v0, p1}, Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/WallpaperRenderer;->mVideoShader:Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;

    .line 87
    new-instance v0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const v2, 0x7f050001

    .line 88
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/rs83/livewallpapers/oneplus7gold/WallpaperRenderer;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-object v4, p0, Lcom/rs83/livewallpapers/oneplus7gold/WallpaperRenderer;->mVideoShader:Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;

    iget-object v5, p0, Lcom/rs83/livewallpapers/oneplus7gold/WallpaperRenderer;->mQuad:Lcom/rs83/livewallpapers/oneplus7gold/IndexedQuad;

    invoke-direct/range {v0 .. v5}, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;Landroid/opengl/GLSurfaceView;Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;Lcom/rs83/livewallpapers/oneplus7gold/IndexedQuad;)V

    iput-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/WallpaperRenderer;->mUnlockVideo:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;

    .line 89
    return-void
.end method

.method private setupResources()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 183
    invoke-virtual {p0}, Lcom/rs83/livewallpapers/oneplus7gold/WallpaperRenderer;->clean()V

    .line 185
    iget-object v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/WallpaperRenderer;->mQuad:Lcom/rs83/livewallpapers/oneplus7gold/IndexedQuad;

    invoke-virtual {v1}, Lcom/rs83/livewallpapers/oneplus7gold/IndexedQuad;->init()V

    .line 186
    iget-object v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/WallpaperRenderer;->mVideoShader:Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;

    iget-object v2, p0, Lcom/rs83/livewallpapers/oneplus7gold/WallpaperRenderer;->mQuad:Lcom/rs83/livewallpapers/oneplus7gold/IndexedQuad;

    invoke-virtual {v1, v2}, Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;->init(Lcom/rs83/livewallpapers/oneplus7gold/IndexedQuad;)V

    .line 188
    const/4 v1, 0x1

    new-array v0, v1, [I

    const/4 v1, -0x1

    aput v1, v0, v3

    .line 189
    .local v0, "handles":[I
    array-length v1, v0

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES30;->glGenTextures(I[II)V

    .line 190
    const v1, 0x84c1

    invoke-static {v1}, Landroid/opengl/GLES30;->glActiveTexture(I)V

    .line 191
    iget-object v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/WallpaperRenderer;->mUnlockVideo:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->init(I)V

    .line 192
    iget-object v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/WallpaperRenderer;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1, v3}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 193
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 164
    iget-object v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/WallpaperRenderer;->mQuad:Lcom/rs83/livewallpapers/oneplus7gold/IndexedQuad;

    invoke-virtual {v1}, Lcom/rs83/livewallpapers/oneplus7gold/IndexedQuad;->clean()V

    .line 165
    iget-object v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/WallpaperRenderer;->mVideoShader:Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;

    invoke-virtual {v1}, Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;->clean()V

    .line 167
    iget-object v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/WallpaperRenderer;->mUnlockVideo:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/WallpaperRenderer;->mUnlockVideo:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;

    invoke-virtual {v1}, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->reset()V

    .line 169
    const/4 v1, 0x1

    new-array v0, v1, [I

    iget-object v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/WallpaperRenderer;->mUnlockVideo:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;

    .line 170
    invoke-virtual {v1}, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->getTextureHandle()I

    move-result v1

    aput v1, v0, v2

    .line 172
    .local v0, "handles":[I
    array-length v1, v0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES30;->glDeleteTextures(I[II)V

    .line 174
    .end local v0    # "handles":[I
    :cond_0
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .param p1, "gl10"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 123
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/WallpaperRenderer;->mUnlockVideo:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;

    invoke-virtual {v0}, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->update()V

    .line 125
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES30;->glClear(I)V

    .line 128
    const/16 v0, 0xb44

    invoke-static {v0}, Landroid/opengl/GLES30;->glDisable(I)V

    .line 129
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES30;->glDisable(I)V

    .line 130
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES30;->glDisable(I)V

    .line 131
    iget v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/WallpaperRenderer;->mWidth:I

    iget v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/WallpaperRenderer;->mHeight:I

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES30;->glViewport(IIII)V

    .line 133
    iget-boolean v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/WallpaperRenderer;->mRotationChanged:Z

    if-eqz v0, :cond_0

    .line 134
    iput-boolean v2, p0, Lcom/rs83/livewallpapers/oneplus7gold/WallpaperRenderer;->mRotationChanged:Z

    .line 135
    iget-boolean v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/WallpaperRenderer;->mPortrait:Z

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/WallpaperRenderer;->mTransform:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 142
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/WallpaperRenderer;->mUnlockVideo:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;

    iget-object v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/WallpaperRenderer;->mTransform:[F

    invoke-virtual {v0, v1}, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->render([F)V

    .line 143
    return-void

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/WallpaperRenderer;->mTransform:[F

    const/high16 v1, -0x3d4c0000    # -90.0f

    invoke-static {v0, v2, v3, v3, v1}, Landroid/opengl/Matrix;->setRotateEulerM([FIFFF)V

    goto :goto_0
.end method

.method public onLocked(Z)V
    .locals 1
    .param p1, "locked"    # Z
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 152
    if-eqz p1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/WallpaperRenderer;->mUnlockVideo:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;

    invoke-virtual {v0}, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->stop()V

    .line 154
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/WallpaperRenderer;->mUnlockVideo:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;

    invoke-virtual {v0}, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->prepare()V

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/WallpaperRenderer;->mUnlockVideo:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;

    invoke-virtual {v0}, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->play()V

    goto :goto_0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3
    .param p1, "gl10"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v1, 0x1

    .line 108
    iput p2, p0, Lcom/rs83/livewallpapers/oneplus7gold/WallpaperRenderer;->mWidth:I

    .line 109
    iput p3, p0, Lcom/rs83/livewallpapers/oneplus7gold/WallpaperRenderer;->mHeight:I

    .line 110
    if-ge p2, p3, :cond_1

    move v0, v1

    .line 111
    .local v0, "portrait":Z
    :goto_0
    iget-boolean v2, p0, Lcom/rs83/livewallpapers/oneplus7gold/WallpaperRenderer;->mPortrait:Z

    if-eq v2, v0, :cond_0

    .line 112
    iput-boolean v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/WallpaperRenderer;->mPortrait:Z

    .line 113
    iput-boolean v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/WallpaperRenderer;->mRotationChanged:Z

    .line 114
    iget-object v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/WallpaperRenderer;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 116
    :cond_0
    return-void

    .line 110
    .end local v0    # "portrait":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .param p1, "gl10"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "eglConfig"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 97
    :try_start_0
    invoke-direct {p0}, Lcom/rs83/livewallpapers/oneplus7gold/WallpaperRenderer;->setupResources()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
