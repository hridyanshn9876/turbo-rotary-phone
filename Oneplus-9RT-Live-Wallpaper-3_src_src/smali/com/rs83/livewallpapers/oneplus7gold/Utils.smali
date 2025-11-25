.class public Lcom/rs83/livewallpapers/oneplus7gold/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rs83/livewallpapers/oneplus7gold/Utils$InvalidHandleException;,
        Lcom/rs83/livewallpapers/oneplus7gold/Utils$BitmapNotLoadedException;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadStringFromAssetFile(Landroid/content/Context;I)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .local v3, "in":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 71
    const/16 v5, 0x2000

    :try_start_0
    new-array v0, v5, [B

    .line 73
    .local v0, "buffer":[B
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 74
    .local v2, "content":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "bytesRead":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    .line 75
    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 70
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    .end local v2    # "content":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v5

    :try_start_1
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :catchall_0
    move-exception v6

    move-object v8, v6

    move-object v6, v5

    move-object v5, v8

    :goto_1
    if-eqz v3, :cond_0

    if-eqz v6, :cond_4

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_2
    throw v5

    .line 77
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v2    # "content":Ljava/io/ByteArrayOutputStream;
    :cond_1
    :try_start_3
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 78
    .local v4, "out":Ljava/lang/String;
    if-eqz v3, :cond_2

    if-eqz v6, :cond_3

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 80
    :cond_2
    :goto_3
    return-object v4

    .line 78
    :catch_1
    move-exception v5

    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_3

    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    .end local v2    # "content":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "out":Ljava/lang/String;
    :catch_2
    move-exception v7

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :catchall_1
    move-exception v5

    goto :goto_1
.end method

.method public static loadTexture(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "assetManager"    # Landroid/content/res/AssetManager;
    .param p1, "assetFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rs83/livewallpapers/oneplus7gold/Utils$BitmapNotLoadedException;
        }
    .end annotation

    .prologue
    .line 50
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .local v2, "input":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 51
    :try_start_1
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 52
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 56
    :cond_0
    :goto_0
    return-object v0

    .line 52
    :catch_0
    move-exception v3

    :try_start_3
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v2    # "input":Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .line 53
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Lcom/rs83/livewallpapers/oneplus7gold/Utils$BitmapNotLoadedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not load bitmap: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/rs83/livewallpapers/oneplus7gold/Utils$BitmapNotLoadedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 52
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    .restart local v2    # "input":Ljava/io/InputStream;
    :cond_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 50
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :catch_2
    move-exception v4

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 52
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_2

    if-eqz v4, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_2
    :goto_1
    :try_start_7
    throw v3

    :catch_3
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1
.end method

.method public static verifyHandle(ILjava/lang/String;)I
    .locals 1
    .param p0, "handle"    # I
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rs83/livewallpapers/oneplus7gold/Utils$InvalidHandleException;
        }
    .end annotation

    .prologue
    .line 32
    if-gez p0, :cond_0

    .line 33
    new-instance v0, Lcom/rs83/livewallpapers/oneplus7gold/Utils$InvalidHandleException;

    invoke-direct {v0, p1}, Lcom/rs83/livewallpapers/oneplus7gold/Utils$InvalidHandleException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    return p0
.end method
