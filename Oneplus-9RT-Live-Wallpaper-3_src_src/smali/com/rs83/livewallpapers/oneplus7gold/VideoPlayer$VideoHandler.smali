.class Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/rs83/livewallpapers/oneplus7gold/VideoStream$OnStreamResourcesLostListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoHandler"
.end annotation


# static fields
.field private static final ADVANCE_MESSAGE:I = 0x2

.field private static final PLAY_MESSAGE:I = 0x0

.field private static final REWINDING_MESSAGE:I = 0x4

.field private static final REWIND_MESSAGE:I = 0x3

.field private static final STOP_MESSAGE:I = 0x1


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mResourcesLost:Z

.field private mStreamState:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamState;

.field final synthetic this$0:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;


# direct methods
.method public constructor <init>(Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;)V
    .locals 3

    .prologue
    .line 423
    iput-object p1, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;->this$0:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    sget-object v1, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamState;->STOPPED:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamState;

    iput-object v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;->mStreamState:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamState;

    .line 418
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;->mResourcesLost:Z

    .line 424
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VideoHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 425
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 426
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;->mHandler:Landroid/os/Handler;

    .line 427
    invoke-static {p1}, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->access$000(Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;)Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->setOnStreamResourcesLostListener(Lcom/rs83/livewallpapers/oneplus7gold/VideoStream$OnStreamResourcesLostListener;)V

    .line 428
    invoke-direct {p0}, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;->rewindStream()V

    .line 429
    return-void
.end method

.method private changeState(Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamState;)V
    .locals 0
    .param p1, "newState"    # Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamState;

    .prologue
    .line 561
    iput-object p1, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;->mStreamState:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamState;

    .line 562
    return-void
.end method

.method private rewindStream()V
    .locals 2

    .prologue
    .line 542
    :try_start_0
    iget-object v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;->this$0:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;

    invoke-static {v1}, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->access$000(Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;)Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->rewind()V
    :try_end_0
    .catch Lcom/rs83/livewallpapers/oneplus7gold/VideoStream$VideoNotInitializedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/rs83/livewallpapers/oneplus7gold/VideoStream$IncorrectFileTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    :goto_0
    return-void

    .line 543
    :catch_0
    move-exception v0

    .line 548
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {p0}, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;->onStreamResourcesLost()V

    goto :goto_0

    .line 543
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 459
    :try_start_0
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 460
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 461
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    :goto_0
    return-void

    .line 462
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 474
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 534
    :cond_0
    :goto_0
    return v3

    .line 477
    :pswitch_0
    iget-object v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;->mStreamState:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamState;

    sget-object v2, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamState;->PLAYING:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamState;

    if-eq v1, v2, :cond_0

    .line 479
    :try_start_0
    iget-object v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;->this$0:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;

    invoke-static {v1}, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->access$000(Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;)Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->start()V
    :try_end_0
    .catch Lcom/rs83/livewallpapers/oneplus7gold/VideoStream$VideoNotInitializedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/rs83/livewallpapers/oneplus7gold/VideoStream$IncorrectFileTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    sget-object v1, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamState;->PLAYING:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamState;

    invoke-direct {p0, v1}, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;->changeState(Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamState;)V

    .line 489
    iget-object v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 480
    :catch_0
    move-exception v0

    .line 485
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {p0}, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;->onStreamResourcesLost()V

    goto :goto_0

    .line 493
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    iget-object v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;->this$0:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;

    invoke-static {v1}, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->access$000(Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;)Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->stop()V

    .line 494
    sget-object v1, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamState;->STOPPED:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamState;

    invoke-direct {p0, v1}, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;->changeState(Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamState;)V

    goto :goto_0

    .line 499
    :pswitch_2
    iget-object v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;->mStreamState:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamState;

    sget-object v2, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamState;->PLAYING:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamState;

    if-ne v1, v2, :cond_0

    .line 500
    iget-object v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;->this$0:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;

    invoke-static {v1}, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->access$000(Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;)Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->advance()Z

    .line 502
    iget-object v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;->this$0:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;

    invoke-static {v1}, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->access$000(Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;)Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->reachedEndOfStream()Z

    move-result v1

    if-nez v1, :cond_1

    .line 503
    iget-object v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 504
    :cond_1
    iget-boolean v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;->mResourcesLost:Z

    if-nez v1, :cond_0

    .line 505
    iget-object v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;->this$0:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;

    invoke-static {v1}, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->access$100(Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;)V

    .line 506
    sget-object v1, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamState;->STOPPED:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamState;

    invoke-direct {p0, v1}, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;->changeState(Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamState;)V

    .line 507
    iget-object v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;->this$0:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;

    invoke-static {v1}, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->access$000(Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;)Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->stop()V

    goto :goto_0

    .line 512
    :pswitch_3
    invoke-direct {p0}, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;->rewindStream()V

    .line 513
    sget-object v1, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamState;->REWINDING:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamState;

    invoke-direct {p0, v1}, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;->changeState(Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamState;)V

    .line 514
    iget-object v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 519
    :pswitch_4
    iget-object v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;->mStreamState:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamState;

    sget-object v2, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamState;->REWINDING:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamState;

    if-ne v1, v2, :cond_0

    .line 520
    iget-object v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;->this$0:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;

    invoke-static {v1}, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->access$000(Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;)Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->advance()Z

    move-result v1

    if-nez v1, :cond_2

    .line 521
    iget-object v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 523
    :cond_2
    invoke-direct {p0}, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;->rewindStream()V

    .line 524
    sget-object v1, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamState;->STOPPED:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamState;

    invoke-direct {p0, v1}, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;->changeState(Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamState;)V

    goto/16 :goto_0

    .line 480
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    .line 474
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onStreamResourcesLost()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 573
    iput-boolean v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;->mResourcesLost:Z

    .line 574
    iget-object v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;->this$0:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;

    iget-object v2, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;->this$0:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;

    invoke-static {v2}, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->access$000(Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;)Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;

    move-result-object v2

    invoke-virtual {v2}, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->hasRenderedOneFrame()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;->mStreamState:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamState;

    sget-object v3, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamState;->REWINDING:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamState;

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    invoke-static {v1, v0}, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;->access$200(Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer;Z)V

    .line 576
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 577
    sget-object v0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamState;->STOPPED:Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamState;

    invoke-direct {p0, v0}, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;->changeState(Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$StreamState;)V

    .line 578
    return-void

    .line 574
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public play()V
    .locals 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 437
    return-void
.end method

.method public rewind()V
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 452
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 444
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoPlayer$VideoHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 445
    return-void
.end method
