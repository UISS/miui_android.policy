.class public Lmiui/app/screenelement/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/ResourceManager$BitmapInfo;
    }
.end annotation


# static fields
.field private static final DEFAULT_DENSITY:I = 0xf0

.field private static final DEFAULT_SCREEN_WIDTH:I = 0x1e0

.field private static final LOG_TAG:Ljava/lang/String; = "ResourceManager"


# instance fields
.field protected final mBitmaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/app/screenelement/ResourceManager$BitmapInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraResourceDensity:I

.field private mExtraResourceFolder:Ljava/lang/String;

.field private mExtraResourceScreenWidth:I

.field private final mFailedBitmaps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMaskBitmap:Landroid/graphics/Bitmap;

.field private mMaskBitmaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mNinePatches:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/NinePatch;",
            ">;"
        }
    .end annotation
.end field

.field private mResourceDensity:I

.field private final mResourceLoader:Lmiui/app/screenelement/ResourceLoader;

.field private mTargetDensity:I


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/ResourceLoader;)V
    .registers 3
    .parameter "resourceLoader"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/ResourceManager;->mBitmaps:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/ResourceManager;->mNinePatches:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/ResourceManager;->mFailedBitmaps:Ljava/util/HashSet;

    iput-object p1, p0, Lmiui/app/screenelement/ResourceManager;->mResourceLoader:Lmiui/app/screenelement/ResourceLoader;

    return-void
.end method

.method private getBitmapInfo(Ljava/lang/String;)Lmiui/app/screenelement/ResourceManager$BitmapInfo;
    .registers 8
    .parameter "src"

    .prologue
    const/4 v3, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    move-object v0, v3

    :goto_8
    return-object v0

    :cond_9
    iget-object v4, p0, Lmiui/app/screenelement/ResourceManager;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/ResourceManager$BitmapInfo;

    .local v0, info:Lmiui/app/screenelement/ResourceManager$BitmapInfo;
    if-eqz v0, :cond_1a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lmiui/app/screenelement/ResourceManager$BitmapInfo;->mLastVisitTime:J

    goto :goto_8

    :cond_1a
    iget-object v4, p0, Lmiui/app/screenelement/ResourceManager;->mFailedBitmaps:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    move-object v0, v3

    goto :goto_8

    :cond_24
    const-string v3, "ResourceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load image "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    .local v2, useDefaultResource:Z
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .local v1, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    iget v3, p0, Lmiui/app/screenelement/ResourceManager;->mTargetDensity:I

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iget v3, p0, Lmiui/app/screenelement/ResourceManager;->mExtraResourceScreenWidth:I

    if-eqz v3, :cond_73

    iget v3, p0, Lmiui/app/screenelement/ResourceManager;->mExtraResourceDensity:I

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iget-object v3, p0, Lmiui/app/screenelement/ResourceManager;->mResourceLoader:Lmiui/app/screenelement/ResourceLoader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lmiui/app/screenelement/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lmiui/app/screenelement/ResourceLoader;->getBitmapInfo(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lmiui/app/screenelement/ResourceManager$BitmapInfo;

    move-result-object v0

    if-eqz v0, :cond_73

    const/4 v2, 0x0

    :cond_73
    if-nez v0, :cond_7f

    iget v3, p0, Lmiui/app/screenelement/ResourceManager;->mResourceDensity:I

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iget-object v3, p0, Lmiui/app/screenelement/ResourceManager;->mResourceLoader:Lmiui/app/screenelement/ResourceLoader;

    invoke-virtual {v3, p1, v1}, Lmiui/app/screenelement/ResourceLoader;->getBitmapInfo(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lmiui/app/screenelement/ResourceManager$BitmapInfo;

    move-result-object v0

    :cond_7f
    if-eqz v0, :cond_b1

    if-nez v2, :cond_9d

    const-string v3, "ResourceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load image from extra resource: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/app/screenelement/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9d
    iget-object v3, v0, Lmiui/app/screenelement/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    iget v4, p0, Lmiui/app/screenelement/ResourceManager;->mTargetDensity:I

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->setDensity(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lmiui/app/screenelement/ResourceManager$BitmapInfo;->mLastVisitTime:J

    iget-object v3, p0, Lmiui/app/screenelement/ResourceManager;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    :cond_b1
    iget-object v3, p0, Lmiui/app/screenelement/ResourceManager;->mFailedBitmaps:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v3, "ResourceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to load image: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8
.end method


# virtual methods
.method public clear()V
    .registers 4

    .prologue
    iget-object v2, p0, Lmiui/app/screenelement/ResourceManager;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/ResourceManager$BitmapInfo;

    .local v0, bi:Lmiui/app/screenelement/ResourceManager$BitmapInfo;
    iget-object v2, v0, Lmiui/app/screenelement/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_a

    iget-object v2, v0, Lmiui/app/screenelement/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_a

    .end local v0           #bi:Lmiui/app/screenelement/ResourceManager$BitmapInfo;
    :cond_20
    iget-object v2, p0, Lmiui/app/screenelement/ResourceManager;->mMaskBitmaps:Ljava/util/HashMap;

    if-eqz v2, :cond_44

    iget-object v2, p0, Lmiui/app/screenelement/ResourceManager;->mMaskBitmaps:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2e
    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .local v0, bi:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2e

    .end local v0           #bi:Landroid/graphics/Bitmap;
    :cond_44
    iget-object v2, p0, Lmiui/app/screenelement/ResourceManager;->mMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_58

    iget-object v2, p0, Lmiui/app/screenelement/ResourceManager;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_58

    iget-object v2, p0, Lmiui/app/screenelement/ResourceManager;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    iput-object v2, p0, Lmiui/app/screenelement/ResourceManager;->mMaskBitmap:Landroid/graphics/Bitmap;

    :cond_58
    iget-object v2, p0, Lmiui/app/screenelement/ResourceManager;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v2, p0, Lmiui/app/screenelement/ResourceManager;->mNinePatches:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "src"

    .prologue
    invoke-direct {p0, p1}, Lmiui/app/screenelement/ResourceManager;->getBitmapInfo(Ljava/lang/String;)Lmiui/app/screenelement/ResourceManager$BitmapInfo;

    move-result-object v0

    .local v0, info:Lmiui/app/screenelement/ResourceManager$BitmapInfo;
    if-eqz v0, :cond_9

    iget-object v1, v0, Lmiui/app/screenelement/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    :goto_8
    return-object v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 8
    .parameter "src"

    .prologue
    invoke-direct {p0, p1}, Lmiui/app/screenelement/ResourceManager;->getBitmapInfo(Ljava/lang/String;)Lmiui/app/screenelement/ResourceManager$BitmapInfo;

    move-result-object v2

    .local v2, info:Lmiui/app/screenelement/ResourceManager$BitmapInfo;
    if-eqz v2, :cond_a

    iget-object v4, v2, Lmiui/app/screenelement/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_c

    :cond_a
    const/4 v3, 0x0

    :goto_b
    return-object v3

    :cond_c
    iget-object v0, v2, Lmiui/app/screenelement/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v4

    if-eqz v4, :cond_25

    new-instance v3, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v4

    iget-object v5, v2, Lmiui/app/screenelement/ResourceManager$BitmapInfo;->mPadding:Landroid/graphics/Rect;

    invoke-direct {v3, v0, v4, v5, p1}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    .local v3, ninePatchDrawable:Landroid/graphics/drawable/NinePatchDrawable;
    iget v4, p0, Lmiui/app/screenelement/ResourceManager;->mTargetDensity:I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/NinePatchDrawable;->setTargetDensity(I)V

    goto :goto_b

    .end local v3           #ninePatchDrawable:Landroid/graphics/drawable/NinePatchDrawable;
    :cond_25
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .local v1, d:Landroid/graphics/drawable/BitmapDrawable;
    iget v4, p0, Lmiui/app/screenelement/ResourceManager;->mTargetDensity:I

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(I)V

    move-object v3, v1

    goto :goto_b
.end method

.method public getFile(Ljava/lang/String;)Landroid/os/MemoryFile;
    .registers 3
    .parameter "src"

    .prologue
    iget-object v0, p0, Lmiui/app/screenelement/ResourceManager;->mResourceLoader:Lmiui/app/screenelement/ResourceLoader;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/ResourceLoader;->getFile(Ljava/lang/String;)Landroid/os/MemoryFile;

    move-result-object v0

    return-object v0
.end method

.method public getManifestRoot()Lorg/w3c/dom/Element;
    .registers 2

    .prologue
    iget-object v0, p0, Lmiui/app/screenelement/ResourceManager;->mResourceLoader:Lmiui/app/screenelement/ResourceLoader;

    invoke-virtual {v0}, Lmiui/app/screenelement/ResourceLoader;->getManifestRoot()Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public getMaskBufferBitmap(IILjava/lang/String;Z)Landroid/graphics/Bitmap;
    .registers 9
    .parameter "width"
    .parameter "height"
    .parameter "key"
    .parameter "hardwareAccelerated"

    .prologue
    if-eqz p4, :cond_d

    iget-object v3, p0, Lmiui/app/screenelement/ResourceManager;->mMaskBitmaps:Ljava/util/HashMap;

    if-nez v3, :cond_d

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lmiui/app/screenelement/ResourceManager;->mMaskBitmaps:Ljava/util/HashMap;

    :cond_d
    if-eqz p4, :cond_54

    iget-object v3, p0, Lmiui/app/screenelement/ResourceManager;->mMaskBitmaps:Ljava/util/HashMap;

    invoke-virtual {v3, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    move-object v1, v3

    .local v1, bm:Landroid/graphics/Bitmap;
    :goto_18
    if-eqz v1, :cond_26

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-lt v3, p2, :cond_26

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ge v3, p1, :cond_53

    :cond_26
    if-eqz v1, :cond_41

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .local v2, bw:I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .local v0, bh:I
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_41

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .end local v0           #bh:I
    .end local v2           #bw:I
    :cond_41
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget v3, p0, Lmiui/app/screenelement/ResourceManager;->mResourceDensity:I

    invoke-virtual {v1, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    if-eqz p4, :cond_57

    iget-object v3, p0, Lmiui/app/screenelement/ResourceManager;->mMaskBitmaps:Ljava/util/HashMap;

    invoke-virtual {v3, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_53
    :goto_53
    return-object v1

    .end local v1           #bm:Landroid/graphics/Bitmap;
    :cond_54
    iget-object v1, p0, Lmiui/app/screenelement/ResourceManager;->mMaskBitmap:Landroid/graphics/Bitmap;

    goto :goto_18

    .restart local v1       #bm:Landroid/graphics/Bitmap;
    :cond_57
    iput-object v1, p0, Lmiui/app/screenelement/ResourceManager;->mMaskBitmap:Landroid/graphics/Bitmap;

    goto :goto_53
.end method

.method public getNinePatch(Ljava/lang/String;)Landroid/graphics/NinePatch;
    .registers 6
    .parameter "src"

    .prologue
    iget-object v2, p0, Lmiui/app/screenelement/ResourceManager;->mNinePatches:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/NinePatch;

    .local v1, ret:Landroid/graphics/NinePatch;
    if-nez v1, :cond_25

    invoke-virtual {p0, p1}, Lmiui/app/screenelement/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    if-eqz v2, :cond_25

    new-instance v1, Landroid/graphics/NinePatch;

    .end local v1           #ret:Landroid/graphics/NinePatch;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    .restart local v1       #ret:Landroid/graphics/NinePatch;
    iget-object v2, p0, Lmiui/app/screenelement/ResourceManager;->mNinePatches:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_25
    return-object v1
.end method

.method public setExtraResource(I)V
    .registers 4
    .parameter "sw"

    .prologue
    iput p1, p0, Lmiui/app/screenelement/ResourceManager;->mExtraResourceScreenWidth:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/ResourceManager;->mExtraResourceFolder:Ljava/lang/String;

    mul-int/lit16 v0, p1, 0xf0

    div-int/lit16 v0, v0, 0x1e0

    iput v0, p0, Lmiui/app/screenelement/ResourceManager;->mExtraResourceDensity:I

    return-void
.end method

.method public setResourceDensity(I)V
    .registers 2
    .parameter "density"

    .prologue
    iput p1, p0, Lmiui/app/screenelement/ResourceManager;->mResourceDensity:I

    return-void
.end method

.method public setTargetDensity(I)V
    .registers 2
    .parameter "density"

    .prologue
    iput p1, p0, Lmiui/app/screenelement/ResourceManager;->mTargetDensity:I

    return-void
.end method
