.class public Lcom/rs83/livewallpapers/oneplus7gold/VideoStream$VideoNotInitializedException;
.super Ljava/lang/Exception;
.source "VideoStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoNotInitializedException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 363
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 364
    return-void
.end method
