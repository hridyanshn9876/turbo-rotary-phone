.class Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "LiveWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WallpaperEngine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine$DeviceLockedReceiver;,
        Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine$WallpaperGLSurfaceView;
    }
.end annotation


# instance fields
.field private mDeviceLockedReceiver:Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine$DeviceLockedReceiver;

.field private mGlView:Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine$WallpaperGLSurfaceView;

.field private mKeyGuardManager:Landroid/app/KeyguardManager;

.field private mLocked:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRenderer:Lcom/rs83/livewallpapers/oneplus7gold/WallpaperRenderer;

.field final synthetic this$0:Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService;


# direct methods
.method public constructor <init>(Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    iput-object p1, p0, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;->this$0:Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService;

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    .line 41
    iput-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;->mGlView:Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine$WallpaperGLSurfaceView;

    .line 46
    iput-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;->mKeyGuardManager:Landroid/app/KeyguardManager;

    .line 51
    iput-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;->mPowerManager:Landroid/os/PowerManager;

    .line 56
    iput-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;->mDeviceLockedReceiver:Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine$DeviceLockedReceiver;

    .line 61
    iput-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;->mRenderer:Lcom/rs83/livewallpapers/oneplus7gold/WallpaperRenderer;

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;->mLocked:Z

    .line 73
    return-void
.end method

.method static synthetic access$100(Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;->syncLockedState(Z)V

    return-void
.end method

.method private isDeviceLocked()Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;->mKeyGuardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private syncLockedState(Z)V
    .locals 2
    .param p1, "forceUpdate"    # Z

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;->isDeviceLocked()Z

    move-result v0

    .line 122
    .local v0, "locked":Z
    iget-boolean v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;->mLocked:Z

    if-ne v1, v0, :cond_0

    if-eqz p1, :cond_1

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;->mRenderer:Lcom/rs83/livewallpapers/oneplus7gold/WallpaperRenderer;

    invoke-virtual {v1, v0}, Lcom/rs83/livewallpapers/oneplus7gold/WallpaperRenderer;->onLocked(Z)V

    .line 124
    iput-boolean v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;->mLocked:Z

    .line 126
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 5
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 83
    :try_start_0
    new-instance v2, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine$WallpaperGLSurfaceView;

    iget-object v3, p0, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;->this$0:Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService;

    invoke-direct {v2, p0, v3}, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine$WallpaperGLSurfaceView;-><init>(Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;->mGlView:Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine$WallpaperGLSurfaceView;

    .line 84
    new-instance v2, Lcom/rs83/livewallpapers/oneplus7gold/WallpaperRenderer;

    iget-object v3, p0, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;->this$0:Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService;

    iget-object v4, p0, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;->mGlView:Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine$WallpaperGLSurfaceView;

    invoke-direct {v2, v3, v4}, Lcom/rs83/livewallpapers/oneplus7gold/WallpaperRenderer;-><init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView;)V

    iput-object v2, p0, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;->mRenderer:Lcom/rs83/livewallpapers/oneplus7gold/WallpaperRenderer;

    .line 85
    iget-object v2, p0, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;->mGlView:Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine$WallpaperGLSurfaceView;

    iget-object v3, p0, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;->mRenderer:Lcom/rs83/livewallpapers/oneplus7gold/WallpaperRenderer;

    invoke-virtual {v2, v3}, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine$WallpaperGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 86
    iget-object v2, p0, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;->this$0:Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    iput-object v2, p0, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;->mKeyGuardManager:Landroid/app/KeyguardManager;

    .line 87
    iget-object v2, p0, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;->this$0:Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;->mPowerManager:Landroid/os/PowerManager;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;->syncLockedState(Z)V

    .line 94
    invoke-virtual {p0}, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;->isPreview()Z

    move-result v2

    if-nez v2, :cond_0

    .line 95
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 96
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const/16 v2, 0x3e7

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 101
    new-instance v2, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine$DeviceLockedReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine$DeviceLockedReceiver;-><init>(Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$1;)V

    iput-object v2, p0, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;->mDeviceLockedReceiver:Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine$DeviceLockedReceiver;

    .line 102
    iget-object v2, p0, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;->this$0:Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService;

    iget-object v3, p0, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;->mDeviceLockedReceiver:Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine$DeviceLockedReceiver;

    invoke-virtual {v2, v3, v1}, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 104
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 133
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 134
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;->mDeviceLockedReceiver:Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine$DeviceLockedReceiver;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;->this$0:Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService;

    iget-object v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;->mDeviceLockedReceiver:Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine$DeviceLockedReceiver;

    invoke-virtual {v0, v1}, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;->mGlView:Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine$WallpaperGLSurfaceView;

    invoke-virtual {v0}, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine$WallpaperGLSurfaceView;->onDestroy()V

    .line 138
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;->mRenderer:Lcom/rs83/livewallpapers/oneplus7gold/WallpaperRenderer;

    invoke-virtual {v0}, Lcom/rs83/livewallpapers/oneplus7gold/WallpaperRenderer;->clean()V

    .line 158
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 159
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 145
    if-eqz p1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;->mGlView:Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine$WallpaperGLSurfaceView;

    invoke-virtual {v0}, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine$WallpaperGLSurfaceView;->onResume()V

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;->mGlView:Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine$WallpaperGLSurfaceView;

    invoke-virtual {v0}, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine$WallpaperGLSurfaceView;->onPause()V

    goto :goto_0
.end method
