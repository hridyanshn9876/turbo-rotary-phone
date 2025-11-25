.class final enum Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;
.super Ljava/lang/Enum;
.source "VideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "StreamCondition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;

.field public static final enum FINE:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;

.field public static final enum NEEDS_LAZY_RESTART:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;

.field public static final enum NEEDS_RESTART:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    new-instance v0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;

    const-string v1, "FINE"

    invoke-direct {v0, v1, v2}, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;->FINE:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;

    .line 63
    new-instance v0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;

    const-string v1, "NEEDS_RESTART"

    invoke-direct {v0, v1, v3}, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;->NEEDS_RESTART:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;

    .line 69
    new-instance v0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;

    const-string v1, "NEEDS_LAZY_RESTART"

    invoke-direct {v0, v1, v4}, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;->NEEDS_LAZY_RESTART:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;

    .line 53
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;

    sget-object v1, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;->FINE:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;->NEEDS_RESTART:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;->NEEDS_LAZY_RESTART:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;

    aput-object v1, v0, v4

    sput-object v0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;->$VALUES:[Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    const-class v0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;

    return-object v0
.end method

.method public static values()[Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;->$VALUES:[Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;

    invoke-virtual {v0}, [Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamCondition;

    return-object v0
.end method
