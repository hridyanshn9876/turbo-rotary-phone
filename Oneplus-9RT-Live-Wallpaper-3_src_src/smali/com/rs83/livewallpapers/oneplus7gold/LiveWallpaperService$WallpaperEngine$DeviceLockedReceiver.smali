.class Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine$DeviceLockedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LiveWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceLockedReceiver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;


# direct methods
.method private constructor <init>(Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine$DeviceLockedReceiver;->this$1:Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;
    .param p2, "x1"    # Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$1;

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine$DeviceLockedReceiver;-><init>(Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine$DeviceLockedReceiver;->this$1:Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;->access$100(Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;Z)V

    .line 224
    return-void
.end method
