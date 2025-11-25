.class public Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;
.super Ljava/lang/Object;
.source "VideoStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rs83/livewallpapers/oneplus7gold/VideoStream$IncorrectFileTypeException;,
        Lcom/rs83/livewallpapers/oneplus7gold/VideoStream$VideoNotInitializedException;,
        Lcom/rs83/livewallpapers/oneplus7gold/VideoStream$OnStreamResourcesLostListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mAssetFile:Ljava/lang/String;

.field private final mAssetManager:Landroid/content/res/AssetManager;

.field private mConfigured:Z

.field private mInEos:Z

.field private final mLogTag:Ljava/lang/String;

.field private mMediaCodec:Landroid/media/MediaCodec;

.field private mMediaExtractor:Landroid/media/MediaExtractor;

.field private mMediaFormat:Landroid/media/MediaFormat;

.field private mOnStreamResourcesLostListener:Lcom/rs83/livewallpapers/oneplus7gold/VideoStream$OnStreamResourcesLostListener;

.field private mOutEos:Z

.field private mStartTimeNanos:J

.field private final mSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/res/AssetManager;Landroid/view/Surface;)V
    .locals 2
    .param p1, "assetFile"    # Ljava/lang/String;
    .param p2, "assetManager"    # Landroid/content/res/AssetManager;
    .param p3, "surface"    # Landroid/view/Surface;

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mOnStreamResourcesLostListener:Lcom/rs83/livewallpapers/oneplus7gold/VideoStream$OnStreamResourcesLostListener;

    .line 81
    iput-boolean v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mConfigured:Z

    .line 86
    iput-boolean v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mInEos:Z

    .line 91
    iput-boolean v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mOutEos:Z

    .line 96
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mStartTimeNanos:J

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoStream("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mLogTag:Ljava/lang/String;

    .line 117
    iput-object p2, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mAssetManager:Landroid/content/res/AssetManager;

    .line 118
    iput-object p1, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mAssetFile:Ljava/lang/String;

    .line 120
    iput-object p3, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mSurface:Landroid/view/Surface;

    .line 121
    return-void
.end method

.method private configure()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rs83/livewallpapers/oneplus7gold/VideoStream$VideoNotInitializedException;,
            Ljava/io/IOException;,
            Lcom/rs83/livewallpapers/oneplus7gold/VideoStream$IncorrectFileTypeException;
        }
    .end annotation

    .prologue
    .line 196
    iget-boolean v2, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mConfigured:Z

    if-nez v2, :cond_1

    .line 198
    iget-object v2, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mAssetManager:Landroid/content/res/AssetManager;

    iget-object v3, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mAssetFile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 199
    .local v1, "file":Landroid/content/res/AssetFileDescriptor;
    new-instance v2, Landroid/media/MediaExtractor;

    invoke-direct {v2}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v2, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mMediaExtractor:Landroid/media/MediaExtractor;

    .line 200
    iget-object v2, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v1}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/res/AssetFileDescriptor;)V

    .line 201
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 203
    invoke-direct {p0}, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->createMediaCodec()Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mMediaCodec:Landroid/media/MediaCodec;

    .line 204
    iget-object v2, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mMediaCodec:Landroid/media/MediaCodec;

    if-nez v2, :cond_0

    .line 205
    iget-object v2, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->release()V

    .line 206
    new-instance v2, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream$IncorrectFileTypeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File not a video: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mAssetFile:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream$IncorrectFileTypeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 210
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object v3, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mMediaFormat:Landroid/media/MediaFormat;

    iget-object v4, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mSurface:Landroid/view/Surface;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 211
    iget-object v2, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    .line 212
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mConfigured:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_1

    .line 219
    .end local v1    # "file":Landroid/content/res/AssetFileDescriptor;
    :cond_1
    return-void

    .line 213
    .restart local v1    # "file":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_0
    iget-object v2, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    .line 216
    new-instance v2, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream$VideoNotInitializedException;

    const-string v3, "Codec could not be configured."

    invoke-direct {v2, v3, v0}, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream$VideoNotInitializedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 213
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method private createMediaCodec()Landroid/media/MediaCodec;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 130
    iget-object v4, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v2

    .line 131
    .local v2, "numTracks":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 132
    iget-object v4, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v4

    iput-object v4, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mMediaFormat:Landroid/media/MediaFormat;

    .line 133
    iget-object v4, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mMediaFormat:Landroid/media/MediaFormat;

    const-string v5, "mime"

    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "mime":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 135
    iget-object v4, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->release()V

    .line 143
    .end local v1    # "mime":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v3

    .line 137
    .restart local v1    # "mime":Ljava/lang/String;
    :cond_1
    const-string v4, "video/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 138
    iget-object v3, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 139
    invoke-static {v1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3

    goto :goto_1

    .line 131
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public advance()Z
    .locals 24

    .prologue
    .line 270
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mConfigured:Z

    if-nez v4, :cond_0

    .line 271
    const/4 v4, 0x0

    .line 348
    :goto_0
    return v4

    .line 274
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mInEos:Z

    if-nez v4, :cond_2

    .line 275
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mMediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v20, 0x7d0

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    .line 276
    .local v5, "index":I
    if-ltz v5, :cond_2

    .line 277
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4, v5}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 278
    .local v11, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v11, :cond_2

    .line 279
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mMediaExtractor:Landroid/media/MediaExtractor;

    const/4 v6, 0x0

    invoke-virtual {v4, v11, v6}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v7

    .line 280
    .local v7, "sampleSize":I
    if-gez v7, :cond_1

    .line 281
    const/4 v7, 0x0

    .line 282
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mInEos:Z

    .line 284
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    .line 285
    .local v8, "time":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mInEos:Z

    if-eqz v10, :cond_6

    const/4 v10, 0x4

    :goto_1
    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 287
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->advance()Z

    .line 292
    .end local v5    # "index":I
    .end local v7    # "sampleSize":I
    .end local v8    # "time":J
    .end local v11    # "buffer":Ljava/nio/ByteBuffer;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mOutEos:Z

    if-nez v4, :cond_8

    .line 293
    new-instance v15, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v15}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 294
    .local v15, "info":Landroid/media/MediaCodec$BufferInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mMediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    invoke-virtual {v4, v15, v0, v1}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v18

    .line 295
    .local v18, "status":I
    if-ltz v18, :cond_7

    .line 296
    iget v4, v15, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_3

    .line 298
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mOutEos:Z

    .line 302
    :cond_3
    iget-wide v0, v15, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x3e8

    mul-long v16, v20, v22

    .line 303
    .local v16, "presentationNanos":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mStartTimeNanos:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v4, v20, v22

    if-gez v4, :cond_4

    .line 304
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v20

    sub-long v20, v20, v16

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mStartTimeNanos:J

    .line 308
    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mStartTimeNanos:J

    move-wide/from16 v20, v0

    add-long v20, v20, v16

    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v22

    sub-long v12, v20, v22

    .line 309
    .local v12, "delay":J
    const-wide/16 v20, 0x0

    cmp-long v4, v12, v20

    if-lez v4, :cond_5

    .line 312
    const-wide/32 v20, 0xf4240

    :try_start_1
    div-long v20, v12, v20

    long-to-int v4, v12

    const v6, 0xf4240

    rem-int/2addr v4, v6

    move-wide/from16 v0, v20

    invoke-static {v0, v1, v4}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 320
    :cond_5
    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mMediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v20, 0x0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v4, v0, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 321
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 285
    .end local v12    # "delay":J
    .end local v15    # "info":Landroid/media/MediaCodec$BufferInfo;
    .end local v16    # "presentationNanos":J
    .end local v18    # "status":I
    .restart local v5    # "index":I
    .restart local v7    # "sampleSize":I
    .restart local v8    # "time":J
    .restart local v11    # "buffer":Ljava/nio/ByteBuffer;
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 322
    .end local v5    # "index":I
    .end local v7    # "sampleSize":I
    .end local v8    # "time":J
    .end local v11    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v15    # "info":Landroid/media/MediaCodec$BufferInfo;
    .restart local v18    # "status":I
    :cond_7
    const/4 v4, -0x2

    move/from16 v0, v18

    if-ne v0, v4, :cond_9

    .line 348
    .end local v15    # "info":Landroid/media/MediaCodec$BufferInfo;
    .end local v18    # "status":I
    :cond_8
    :goto_3
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 327
    .restart local v15    # "info":Landroid/media/MediaCodec$BufferInfo;
    .restart local v18    # "status":I
    :cond_9
    const/4 v4, -0x1

    move/from16 v0, v18

    if-ne v0, v4, :cond_8

    goto :goto_3

    .line 335
    .end local v15    # "info":Landroid/media/MediaCodec$BufferInfo;
    .end local v18    # "status":I
    :catch_0
    move-exception v14

    .line 340
    .local v14, "e":Ljava/lang/IllegalStateException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mOnStreamResourcesLostListener:Lcom/rs83/livewallpapers/oneplus7gold/VideoStream$OnStreamResourcesLostListener;

    if-eqz v4, :cond_a

    .line 341
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mOnStreamResourcesLostListener:Lcom/rs83/livewallpapers/oneplus7gold/VideoStream$OnStreamResourcesLostListener;

    invoke-interface {v4}, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream$OnStreamResourcesLostListener;->onStreamResourcesLost()V

    .line 344
    :cond_a
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mInEos:Z

    .line 345
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mOutEos:Z

    .line 346
    const-wide/16 v20, -0x1

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mStartTimeNanos:J

    goto :goto_3

    .line 313
    .end local v14    # "e":Ljava/lang/IllegalStateException;
    .restart local v12    # "delay":J
    .restart local v15    # "info":Landroid/media/MediaCodec$BufferInfo;
    .restart local v16    # "presentationNanos":J
    .restart local v18    # "status":I
    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method public hasRenderedOneFrame()Z
    .locals 4

    .prologue
    .line 184
    iget-wide v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mStartTimeNanos:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reachedEndOfStream()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mInEos:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mOutEos:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mMediaExtractor:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 167
    :cond_1
    return-void
.end method

.method public rewind()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rs83/livewallpapers/oneplus7gold/VideoStream$VideoNotInitializedException;,
            Ljava/io/IOException;,
            Lcom/rs83/livewallpapers/oneplus7gold/VideoStream$IncorrectFileTypeException;
        }
    .end annotation

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->configure()V

    .line 260
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mMediaExtractor:Landroid/media/MediaExtractor;

    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 261
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 262
    return-void
.end method

.method public setOnStreamResourcesLostListener(Lcom/rs83/livewallpapers/oneplus7gold/VideoStream$OnStreamResourcesLostListener;)V
    .locals 0
    .param p1, "onStreamResourcesLostListener"    # Lcom/rs83/livewallpapers/oneplus7gold/VideoStream$OnStreamResourcesLostListener;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mOnStreamResourcesLostListener:Lcom/rs83/livewallpapers/oneplus7gold/VideoStream$OnStreamResourcesLostListener;

    .line 154
    return-void
.end method

.method public start()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rs83/livewallpapers/oneplus7gold/VideoStream$VideoNotInitializedException;,
            Ljava/io/IOException;,
            Lcom/rs83/livewallpapers/oneplus7gold/VideoStream$IncorrectFileTypeException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 229
    invoke-direct {p0}, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->configure()V

    .line 230
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mStartTimeNanos:J

    .line 231
    iput-boolean v2, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mInEos:Z

    .line 232
    iput-boolean v2, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mOutEos:Z

    .line 233
    return-void
.end method


.method public getWidth()I
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mMediaFormat:Landroid/media/MediaFormat;

    if-eqz v0, :no_format

    const-string v1, "width"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0

    :no_format
    const/4 v0, 0x0

    return v0
.end method


.method public getHeight()I
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mMediaFormat:Landroid/media/MediaFormat;

    if-eqz v0, :no_format2

    const-string v1, "height"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0

    :no_format2
    const/4 v0, 0x0

    return v0
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 239
    iget-boolean v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mConfigured:Z

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 241
    invoke-virtual {p0}, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->release()V

    .line 242
    iput-boolean v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mConfigured:Z

    .line 243
    iput-boolean v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mInEos:Z

    .line 244
    iput-boolean v1, p0, Lcom/rs83/livewallpapers/oneplus7gold/VideoStream;->mOutEos:Z

    .line 246
    :cond_0
    return-void
.end method
