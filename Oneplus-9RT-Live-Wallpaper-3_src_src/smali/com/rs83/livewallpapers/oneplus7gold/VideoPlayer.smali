.class Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;
.super Lcom/rs83/livewallpapers/oneplus7gold/Renderable;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;,
        Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;,
        Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mAssetFile:Ljava/lang/String;

.field private final mAssetManager:Landroid/content/res/AssetManager;

.field private mHandler:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;

.field private volatile mIsPlaying:Z

.field private final mLogTag:Ljava/lang/String;

.field private volatile mNewFrameAvailable:Z

.field private volatile mStreamCondition:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextureHandle:I

.field private final mUvTransform:[F

.field private mVideoStream:Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;

.field private final mView:Landroid/opengl/GLSurfaceView;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;Landroid/opengl/GLSurfaceView;Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;Lcom/rs83/livewallpapers/oneplus7gold/IndexedQuad;)V
    .locals 3
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "assetFile"    # Ljava/lang/String;
    .param p3, "view"    # Landroid/opengl/GLSurfaceView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "shader"    # Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;
    .param p5, "quad"    # Lcom/rs83/livewallpapers/oneplus7gold/IndexedQuad;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 154
    invoke-direct {p0, p4, p5}, Lcom/rs83/livewallpapers/oneplus7gold/Renderable;-><init>(Lcom/rs83/livewallpapers/oneplus7gold/Shader;Lcom/rs83/livewallpapers/oneplus7gold/IndexedQuad;)V

    .line 75
    sget-object v0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;->FINE:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;

    iput-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mStreamCondition:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;

    .line 100
    iput-object v2, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mHandler:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;

    .line 120
    iput-boolean v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mIsPlaying:Z

    .line 125
    iput-boolean v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mNewFrameAvailable:Z

    .line 135
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mUvTransform:[F

    .line 140
    iput-object v2, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mVideoStream:Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoPlayer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mLogTag:Ljava/lang/String;

    .line 156
    iput-object p1, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mAssetManager:Landroid/content/res/AssetManager;

    .line 157
    iput-object p2, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mAssetFile:Ljava/lang/String;

    .line 158
    iput-object p3, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mView:Landroid/opengl/GLSurfaceView;

    .line 159
    return-void
.end method

.method static synthetic access$000(Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;)Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;
    .locals 1
    .param p0, "x0"    # Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mVideoStream:Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;

    return-object v0
.end method

.method static synthetic access$100(Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->onPlayingComplete()V

    return-void
.end method

.method static synthetic access$200(Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->onResourcesLost(Z)V

    return-void
.end method

.method private declared-synchronized onPlayingComplete()V
    .locals 1

    .prologue
    .line 348
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mIsPlaying:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    monitor-exit p0

    return-void

    .line 348
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onResourcesLost(Z)V
    .locals 1
    .param p1, "lazyRestart"    # Z

    .prologue
    .line 325
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 327
    :try_start_0
    sget-object v0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;->NEEDS_LAZY_RESTART:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;

    iput-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mStreamCondition:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;

    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mIsPlaying:Z

    .line 341
    :goto_0
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    monitor-exit p0

    return-void

    .line 334
    :cond_0
    :try_start_1
    sget-object v0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;->NEEDS_RESTART:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;

    iput-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mStreamCondition:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private resetStream()Z
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mTextureHandle:I

    invoke-virtual {p0, v0}, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->init(I)V

    .line 271
    sget-object v0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;->FINE:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;

    iput-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mStreamCondition:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;

    .line 272
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 273
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public declared-synchronized bind([F)V
    .locals 3
    .param p1, "transform"    # [F

    .prologue
    .line 254
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mShader:Lcom/rs83/livewallpapers/oneplus7gold/Shader;

    check-cast v0, Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;

    iget-object v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mUvTransform:[F

    invoke-virtual {v0, v1}, Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;->setUvTransform([F)V

    .line 255
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mShader:Lcom/rs83/livewallpapers/oneplus7gold/Shader;

    check-cast v0, Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;

    iget-object v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mStreamCondition:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;

    sget-object v2, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;->FINE:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/rs83/livewallpapers/oneplus7gold/VideoShader;->useBackup(Z)V

    .line 256
    invoke-super {p0, p1}, Lcom/rs83/livewallpapers/oneplus7gold/Renderable;->bind([F)V

    .line 260
    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES30;->glActiveTexture(I)V

    .line 261
    const v0, 0x8d65

    iget v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mTextureHandle:I

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glBindTexture(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    monitor-exit p0

    return-void

    .line 255
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTextureHandle()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mTextureHandle:I

    return v0
.end method

.method public declared-synchronized init(I)V
    .locals 4
    .param p1, "textureHandle"    # I

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->reset()V

    .line 173
    iput p1, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mTextureHandle:I

    .line 174
    new-instance v0, Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, p1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 175
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 176
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mSurface:Landroid/view/Surface;

    .line 178
    new-instance v0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;

    iget-object v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mAssetFile:Ljava/lang/String;

    iget-object v2, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mAssetManager:Landroid/content/res/AssetManager;

    iget-object v3, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mSurface:Landroid/view/Surface;

    invoke-direct {v0, v1, v2, v3}, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;-><init>(Ljava/lang/String;Landroid/content/res/AssetManager;Landroid/view/Surface;)V

    iput-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mVideoStream:Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;

    .line 180
    sget-object v0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;->FINE:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;

    iput-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mStreamCondition:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;

    .line 181
    new-instance v0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;

    invoke-direct {v0, p0}, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;-><init>(Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;)V

    iput-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mHandler:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;

    .line 187
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mHandler:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;

    invoke-virtual {v0}, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;->rewind()V

    .line 188
    iget-boolean v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mIsPlaying:Z

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mHandler:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;

    invoke-virtual {v0}, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;->play()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :cond_0
    monitor-exit p0

    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 356
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mNewFrameAvailable:Z

    .line 357
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    :cond_0
    monitor-exit p0

    return-void

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized play()V
    .locals 2
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .prologue
    .line 295
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mIsPlaying:Z

    .line 296
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mStreamCondition:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;

    sget-object v1, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;->FINE:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->resetStream()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 306
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 303
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mHandler:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mHandler:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;

    invoke-virtual {v0}, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;->play()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized prepare()V
    .locals 1
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .prologue
    .line 282
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mHandler:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mHandler:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;

    invoke-virtual {v0}, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;->rewind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    :cond_0
    monitor-exit p0

    return-void

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 198
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mHandler:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mHandler:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;

    invoke-virtual {v0}, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;->dispose()V

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mHandler:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    .line 209
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 213
    :cond_2
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mVideoStream:Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;

    if-eqz v0, :cond_3

    .line 214
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mVideoStream:Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;

    invoke-virtual {v0}, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->release()V

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mVideoStream:Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :cond_3
    monitor-exit p0

    return-void

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .prologue
    .line 313
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mHandler:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mStreamCondition:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;

    sget-object v1, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;->FINE:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;

    if-ne v0, v1, :cond_0

    .line 314
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mHandler:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;

    invoke-virtual {v0}, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;->stop()V

    .line 316
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mIsPlaying:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    monitor-exit p0

    return-void

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized update()V
    .locals 2

    .prologue
    .line 233
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mNewFrameAvailable:Z

    if-eqz v1, :cond_0

    .line 234
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mNewFrameAvailable:Z

    .line 235
    iget-object v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 236
    iget-object v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mUvTransform:[F

    invoke-virtual {v1, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 237
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mStreamCondition:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;

    sget-object v1, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;->NEEDS_RESTART:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;

    if-ne v0, v1, :cond_1

    .line 245
    invoke-direct {p0}, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->resetStream()Z

    move-result v0

    iput-boolean v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->mIsPlaying:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    :cond_1
    monitor-exit p0

    return-void

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
