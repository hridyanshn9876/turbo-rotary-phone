.class public Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService;
.super Landroid/service/wallpaper/WallpaperService;
.source "LiveWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;

    invoke-direct {v0, p0}, Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService$WallpaperEngine;-><init>(Lcom/rs83/livewallpapers/oneplus7gold/LiveWallpaperService;)V

    return-object v0
.end method
