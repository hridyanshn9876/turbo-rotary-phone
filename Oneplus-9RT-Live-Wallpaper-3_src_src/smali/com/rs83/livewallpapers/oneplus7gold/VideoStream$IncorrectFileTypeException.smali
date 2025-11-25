.class public Lcom/rs83/livewallpapers/oneplus7gold/VideoStream$IncorrectFileTypeException;
.super Ljava/lang/Exception;
.source "VideoStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IncorrectFileTypeException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 378
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 379
    return-void
.end method
