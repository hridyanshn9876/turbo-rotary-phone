.class Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine$WallpaperGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "LiveWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WallpaperGLSurfaceView"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;


# direct methods
.method public constructor <init>(Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine$WallpaperGLSurfaceView;->this$1:Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;

    .line 173
    invoke-direct {p0, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 175
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine$WallpaperGLSurfaceView;->setEGLContextClientVersion(I)V

    .line 176
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine$WallpaperGLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    .line 177
    return-void
.end method


# virtual methods
.method public getHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine$WallpaperGLSurfaceView;->this$1:Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;

    invoke-virtual {v0}, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 209
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    .line 210
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine$WallpaperGLSurfaceView;->this$1:Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;->access$100(Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;Z)V

    .line 185
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 186
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine$WallpaperGLSurfaceView;->this$1:Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;->access$100(Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;Z)V

    .line 194
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 195
    return-void
.end method
