.class public abstract Lcom/rs83/livewallpapers/oneplus7gold/Renderable;
.super Ljava/lang/Object;
.source "Renderable.java"


# instance fields
.field private final mQuad:Lcom/rs83/livewallpapers/oneplus7gold/IndexedQuad;

.field protected final mShader:Lcom/rs83/livewallpapers/oneplus7gold/Shader;


# direct methods
.method public constructor <init>(Lcom/rs83/livewallpapers/oneplus7gold/Shader;Lcom/rs83/livewallpapers/oneplus7gold/IndexedQuad;)V
    .locals 0
    .param p1, "shader"    # Lcom/rs83/livewallpapers/oneplus7gold/Shader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "quad"    # Lcom/rs83/livewallpapers/oneplus7gold/IndexedQuad;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/rs83/livewallpapers/oneplus7gold/Renderable;->mShader:Lcom/rs83/livewallpapers/oneplus7gold/Shader;

    .line 33
    iput-object p2, p0, Lcom/rs83/livewallpapers/oneplus7gold/Renderable;->mQuad:Lcom/rs83/livewallpapers/oneplus7gold/IndexedQuad;

    .line 34
    return-void
.end method


# virtual methods
.method protected bind([F)V
    .locals 1
    .param p1, "transform"    # [F

    .prologue
    .line 42
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/Renderable;->mShader:Lcom/rs83/livewallpapers/oneplus7gold/Shader;

    invoke-virtual {v0, p1}, Lcom/rs83/livewallpapers/oneplus7gold/Shader;->bind([F)V

    .line 43
    return-void
.end method

.method public render([F)V
    .locals 1
    .param p1, "transform"    # [F

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/rs83/livewallpapers/oneplus7gold/Renderable;->bind([F)V

    .line 52
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/Renderable;->mQuad:Lcom/rs83/livewallpapers/oneplus7gold/IndexedQuad;

    invoke-virtual {v0}, Lcom/rs83/livewallpapers/oneplus7gold/IndexedQuad;->render()V

    .line 53
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/Renderable;->mShader:Lcom/rs83/livewallpapers/oneplus7gold/Shader;

    invoke-virtual {v0}, Lcom/rs83/livewallpapers/oneplus7gold/Shader;->unbind()V

    .line 54
    return-void
.end method
