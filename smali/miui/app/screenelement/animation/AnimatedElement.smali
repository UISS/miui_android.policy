.class public Lmiui/app/screenelement/animation/AnimatedElement;
.super Ljava/lang/Object;
.source "AnimatedElement.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "AnimatedElement"


# instance fields
.field private mAlignAbsolute:Z

.field private mAlphaExpression:Lmiui/app/screenelement/data/Expression;

.field private mAlphas:Lmiui/app/screenelement/animation/AlphaAnimation;

.field private mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/app/screenelement/animation/BaseAnimation;",
            ">;"
        }
    .end annotation
.end field

.field protected mBaseXExpression:Lmiui/app/screenelement/data/Expression;

.field protected mBaseYExpression:Lmiui/app/screenelement/data/Expression;

.field protected mCenterXExpression:Lmiui/app/screenelement/data/Expression;

.field protected mCenterYExpression:Lmiui/app/screenelement/data/Expression;

.field private mContext:Lmiui/app/screenelement/ScreenContext;

.field protected mHeightExpression:Lmiui/app/screenelement/data/Expression;

.field private mPositions:Lmiui/app/screenelement/animation/PositionAnimation;

.field protected mRotationExpression:Lmiui/app/screenelement/data/Expression;

.field private mRotations:Lmiui/app/screenelement/animation/RotationAnimation;

.field private mSizes:Lmiui/app/screenelement/animation/SizeAnimation;

.field private mSources:Lmiui/app/screenelement/animation/SourcesAnimation;

.field private mSrcFormatter:Lmiui/app/screenelement/util/TextFormatter;

.field protected mSrcIdExpression:Lmiui/app/screenelement/data/Expression;

.field protected mWidthExpression:Lmiui/app/screenelement/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V
    .registers 4
    .parameter "node"
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    iput-object p2, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-virtual {p0, p1}, Lmiui/app/screenelement/animation/AnimatedElement;->load(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;
    .registers 6
    .parameter "node"
    .parameter "name"
    .parameter "compatibleName"

    .prologue
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/app/screenelement/data/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v0

    .local v0, exp:Lmiui/app/screenelement/data/Expression;
    if-nez v0, :cond_18

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-interface {p1, p3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/app/screenelement/data/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v0

    :cond_18
    return-object v0
.end method

.method private loadAlphaAnimations(Lorg/w3c/dom/Element;)V
    .registers 5
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const-string v1, "AlphaAnimation"

    invoke-static {p1, v1}, Lmiui/app/screenelement/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .local v0, ele:Lorg/w3c/dom/Element;
    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    new-instance v1, Lmiui/app/screenelement/animation/AlphaAnimation;

    iget-object v2, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-direct {v1, v0, v2}, Lmiui/app/screenelement/animation/AlphaAnimation;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    iput-object v1, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mAlphas:Lmiui/app/screenelement/animation/AlphaAnimation;

    iget-object v1, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    iget-object v2, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mAlphas:Lmiui/app/screenelement/animation/AlphaAnimation;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8
.end method

.method private loadPositionAnimations(Lorg/w3c/dom/Element;)V
    .registers 5
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const-string v1, "PositionAnimation"

    invoke-static {p1, v1}, Lmiui/app/screenelement/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .local v0, ele:Lorg/w3c/dom/Element;
    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    new-instance v1, Lmiui/app/screenelement/animation/PositionAnimation;

    iget-object v2, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-direct {v1, v0, v2}, Lmiui/app/screenelement/animation/PositionAnimation;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    iput-object v1, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mPositions:Lmiui/app/screenelement/animation/PositionAnimation;

    iget-object v1, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    iget-object v2, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mPositions:Lmiui/app/screenelement/animation/PositionAnimation;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8
.end method

.method private loadRotationAnimations(Lorg/w3c/dom/Element;)V
    .registers 5
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const-string v1, "RotationAnimation"

    invoke-static {p1, v1}, Lmiui/app/screenelement/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .local v0, ele:Lorg/w3c/dom/Element;
    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    new-instance v1, Lmiui/app/screenelement/animation/RotationAnimation;

    iget-object v2, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-direct {v1, v0, v2}, Lmiui/app/screenelement/animation/RotationAnimation;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    iput-object v1, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mRotations:Lmiui/app/screenelement/animation/RotationAnimation;

    iget-object v1, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    iget-object v2, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mRotations:Lmiui/app/screenelement/animation/RotationAnimation;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8
.end method

.method private loadSizeAnimations(Lorg/w3c/dom/Element;)V
    .registers 5
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const-string v1, "SizeAnimation"

    invoke-static {p1, v1}, Lmiui/app/screenelement/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .local v0, ele:Lorg/w3c/dom/Element;
    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    new-instance v1, Lmiui/app/screenelement/animation/SizeAnimation;

    iget-object v2, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-direct {v1, v0, v2}, Lmiui/app/screenelement/animation/SizeAnimation;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    iput-object v1, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mSizes:Lmiui/app/screenelement/animation/SizeAnimation;

    iget-object v1, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    iget-object v2, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mSizes:Lmiui/app/screenelement/animation/SizeAnimation;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8
.end method

.method private loadSourceAnimations(Lorg/w3c/dom/Element;)V
    .registers 5
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const-string v1, "SourcesAnimation"

    invoke-static {p1, v1}, Lmiui/app/screenelement/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .local v0, ele:Lorg/w3c/dom/Element;
    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    new-instance v1, Lmiui/app/screenelement/animation/SourcesAnimation;

    iget-object v2, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-direct {v1, v0, v2}, Lmiui/app/screenelement/animation/SourcesAnimation;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    iput-object v1, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mSources:Lmiui/app/screenelement/animation/SourcesAnimation;

    iget-object v1, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    iget-object v2, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mSources:Lmiui/app/screenelement/animation/SourcesAnimation;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8
.end method


# virtual methods
.method public getAlpha()I
    .registers 6

    .prologue
    const/16 v2, 0xff

    iget-object v3, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mAlphaExpression:Lmiui/app/screenelement/data/Expression;

    if-eqz v3, :cond_20

    iget-object v3, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mAlphaExpression:Lmiui/app/screenelement/data/Expression;

    iget-object v4, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v4, v4, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-virtual {v3, v4}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v3

    double-to-int v0, v3

    .local v0, alpha:I
    :goto_11
    iget-object v3, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mAlphas:Lmiui/app/screenelement/animation/AlphaAnimation;

    if-eqz v3, :cond_22

    iget-object v2, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mAlphas:Lmiui/app/screenelement/animation/AlphaAnimation;

    invoke-virtual {v2}, Lmiui/app/screenelement/animation/AlphaAnimation;->getAlpha()I

    move-result v1

    .local v1, alpha1:I
    :goto_1b
    invoke-static {v0, v1}, Lmiui/app/screenelement/util/Utils;->mixAlpha(II)I

    move-result v2

    return v2

    .end local v0           #alpha:I
    .end local v1           #alpha1:I
    :cond_20
    move v0, v2

    goto :goto_11

    .restart local v0       #alpha:I
    :cond_22
    move v1, v2

    goto :goto_1b
.end method

.method public getHeight()F
    .registers 3

    .prologue
    iget-object v0, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mSizes:Lmiui/app/screenelement/animation/SizeAnimation;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mSizes:Lmiui/app/screenelement/animation/SizeAnimation;

    invoke-virtual {v0}, Lmiui/app/screenelement/animation/SizeAnimation;->getHeight()D

    move-result-wide v0

    double-to-float v0, v0

    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mHeightExpression:Lmiui/app/screenelement/data/Expression;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mHeightExpression:Lmiui/app/screenelement/data/Expression;

    iget-object v1, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v0

    :goto_1a
    double-to-float v0, v0

    goto :goto_b

    :cond_1c
    const-wide/high16 v0, -0x4010

    goto :goto_1a
.end method

.method public getMaxHeight()F
    .registers 3

    .prologue
    iget-object v0, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mSizes:Lmiui/app/screenelement/animation/SizeAnimation;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mSizes:Lmiui/app/screenelement/animation/SizeAnimation;

    invoke-virtual {v0}, Lmiui/app/screenelement/animation/SizeAnimation;->getMaxHeight()D

    move-result-wide v0

    double-to-float v0, v0

    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mHeightExpression:Lmiui/app/screenelement/data/Expression;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mHeightExpression:Lmiui/app/screenelement/data/Expression;

    iget-object v1, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v0

    :goto_1a
    double-to-float v0, v0

    goto :goto_b

    :cond_1c
    const-wide/high16 v0, -0x4010

    goto :goto_1a
.end method

.method public getMaxWidth()F
    .registers 3

    .prologue
    iget-object v0, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mSizes:Lmiui/app/screenelement/animation/SizeAnimation;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mSizes:Lmiui/app/screenelement/animation/SizeAnimation;

    invoke-virtual {v0}, Lmiui/app/screenelement/animation/SizeAnimation;->getMaxWidth()D

    move-result-wide v0

    double-to-float v0, v0

    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mWidthExpression:Lmiui/app/screenelement/data/Expression;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mWidthExpression:Lmiui/app/screenelement/data/Expression;

    iget-object v1, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v0

    :goto_1a
    double-to-float v0, v0

    goto :goto_b

    :cond_1c
    const-wide/high16 v0, -0x4010

    goto :goto_1a
.end method

.method public getPivotX()F
    .registers 5

    .prologue
    iget-object v2, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mCenterXExpression:Lmiui/app/screenelement/data/Expression;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mCenterXExpression:Lmiui/app/screenelement/data/Expression;

    iget-object v3, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v3, v3, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-virtual {v2, v3}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v0

    .local v0, x:D
    :goto_e
    double-to-float v2, v0

    return v2

    .end local v0           #x:D
    :cond_10
    const-wide/16 v0, 0x0

    goto :goto_e
.end method

.method public getPivotY()F
    .registers 5

    .prologue
    iget-object v2, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mCenterYExpression:Lmiui/app/screenelement/data/Expression;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mCenterYExpression:Lmiui/app/screenelement/data/Expression;

    iget-object v3, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v3, v3, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-virtual {v2, v3}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v0

    .local v0, y:D
    :goto_e
    double-to-float v2, v0

    return v2

    .end local v0           #y:D
    :cond_10
    const-wide/16 v0, 0x0

    goto :goto_e
.end method

.method public getRotationAngle()F
    .registers 5

    .prologue
    iget-object v2, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mRotationExpression:Lmiui/app/screenelement/data/Expression;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mRotationExpression:Lmiui/app/screenelement/data/Expression;

    iget-object v3, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v3, v3, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-virtual {v2, v3}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v0

    .local v0, angle:D
    :goto_e
    iget-object v2, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mRotations:Lmiui/app/screenelement/animation/RotationAnimation;

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mRotations:Lmiui/app/screenelement/animation/RotationAnimation;

    invoke-virtual {v2}, Lmiui/app/screenelement/animation/RotationAnimation;->getAngle()F

    move-result v2

    :goto_18
    float-to-double v2, v2

    add-double/2addr v2, v0

    double-to-float v2, v2

    return v2

    .end local v0           #angle:D
    :cond_1c
    const-wide/16 v0, 0x0

    goto :goto_e

    .restart local v0       #angle:D
    :cond_1f
    const/4 v2, 0x0

    goto :goto_18
.end method

.method public getSrc()Ljava/lang/String;
    .registers 6

    .prologue
    iget-object v3, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mSrcFormatter:Lmiui/app/screenelement/util/TextFormatter;

    iget-object v4, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v4, v4, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-virtual {v3, v4}, Lmiui/app/screenelement/util/TextFormatter;->getText(Lmiui/app/screenelement/data/Variables;)Ljava/lang/String;

    move-result-object v2

    .local v2, src:Ljava/lang/String;
    iget-object v3, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mSources:Lmiui/app/screenelement/animation/SourcesAnimation;

    if-eqz v3, :cond_14

    iget-object v3, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mSources:Lmiui/app/screenelement/animation/SourcesAnimation;

    invoke-virtual {v3}, Lmiui/app/screenelement/animation/SourcesAnimation;->getSrc()Ljava/lang/String;

    move-result-object v2

    :cond_14
    if-eqz v2, :cond_2d

    iget-object v3, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mSrcIdExpression:Lmiui/app/screenelement/data/Expression;

    if-eqz v3, :cond_2d

    iget-object v3, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mSrcIdExpression:Lmiui/app/screenelement/data/Expression;

    iget-object v4, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v4, v4, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-virtual {v3, v4}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v3

    double-to-long v0, v3

    .local v0, id:J
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmiui/app/screenelement/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .end local v0           #id:J
    :cond_2d
    return-object v2
.end method

.method public getWidth()F
    .registers 3

    .prologue
    iget-object v0, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mSizes:Lmiui/app/screenelement/animation/SizeAnimation;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mSizes:Lmiui/app/screenelement/animation/SizeAnimation;

    invoke-virtual {v0}, Lmiui/app/screenelement/animation/SizeAnimation;->getWidth()D

    move-result-wide v0

    double-to-float v0, v0

    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mWidthExpression:Lmiui/app/screenelement/data/Expression;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mWidthExpression:Lmiui/app/screenelement/data/Expression;

    iget-object v1, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v0

    :goto_1a
    double-to-float v0, v0

    goto :goto_b

    :cond_1c
    const-wide/high16 v0, -0x4010

    goto :goto_1a
.end method

.method public getX()F
    .registers 5

    .prologue
    iget-object v2, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mBaseXExpression:Lmiui/app/screenelement/data/Expression;

    if-eqz v2, :cond_26

    iget-object v2, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mBaseXExpression:Lmiui/app/screenelement/data/Expression;

    iget-object v3, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v3, v3, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-virtual {v2, v3}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v0

    .local v0, x:D
    :goto_e
    iget-object v2, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mSources:Lmiui/app/screenelement/animation/SourcesAnimation;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mSources:Lmiui/app/screenelement/animation/SourcesAnimation;

    invoke-virtual {v2}, Lmiui/app/screenelement/animation/SourcesAnimation;->getX()D

    move-result-wide v2

    add-double/2addr v0, v2

    :cond_19
    iget-object v2, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mPositions:Lmiui/app/screenelement/animation/PositionAnimation;

    if-eqz v2, :cond_24

    iget-object v2, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mPositions:Lmiui/app/screenelement/animation/PositionAnimation;

    invoke-virtual {v2}, Lmiui/app/screenelement/animation/PositionAnimation;->getX()D

    move-result-wide v2

    add-double/2addr v0, v2

    :cond_24
    double-to-float v2, v0

    return v2

    .end local v0           #x:D
    :cond_26
    const-wide/16 v0, 0x0

    goto :goto_e
.end method

.method public getY()F
    .registers 5

    .prologue
    iget-object v2, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mBaseYExpression:Lmiui/app/screenelement/data/Expression;

    if-eqz v2, :cond_26

    iget-object v2, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mBaseYExpression:Lmiui/app/screenelement/data/Expression;

    iget-object v3, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v3, v3, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-virtual {v2, v3}, Lmiui/app/screenelement/data/Expression;->evaluate(Lmiui/app/screenelement/data/Variables;)D

    move-result-wide v0

    .local v0, y:D
    :goto_e
    iget-object v2, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mSources:Lmiui/app/screenelement/animation/SourcesAnimation;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mSources:Lmiui/app/screenelement/animation/SourcesAnimation;

    invoke-virtual {v2}, Lmiui/app/screenelement/animation/SourcesAnimation;->getY()D

    move-result-wide v2

    add-double/2addr v0, v2

    :cond_19
    iget-object v2, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mPositions:Lmiui/app/screenelement/animation/PositionAnimation;

    if-eqz v2, :cond_24

    iget-object v2, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mPositions:Lmiui/app/screenelement/animation/PositionAnimation;

    invoke-virtual {v2}, Lmiui/app/screenelement/animation/PositionAnimation;->getY()D

    move-result-wide v2

    add-double/2addr v0, v2

    :cond_24
    double-to-float v2, v0

    return v2

    .end local v0           #y:D
    :cond_26
    const-wide/16 v0, 0x0

    goto :goto_e
.end method

.method public init()V
    .registers 4

    .prologue
    iget-object v2, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/animation/BaseAnimation;

    .local v0, ani:Lmiui/app/screenelement/animation/BaseAnimation;
    invoke-virtual {v0}, Lmiui/app/screenelement/animation/BaseAnimation;->init()V

    goto :goto_6

    .end local v0           #ani:Lmiui/app/screenelement/animation/BaseAnimation;
    :cond_16
    return-void
.end method

.method public isAlignAbsolute()Z
    .registers 2

    .prologue
    iget-boolean v0, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mAlignAbsolute:Z

    return v0
.end method

.method public load(Lorg/w3c/dom/Element;)V
    .registers 9
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    if-nez p1, :cond_12

    const-string v0, "AnimatedElement"

    const-string v1, "node is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lmiui/app/screenelement/ScreenElementLoadException;

    const-string v1, "node is null"

    invoke-direct {v0, v1}, Lmiui/app/screenelement/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    const-string v0, "x"

    const-string v1, "left"

    invoke-direct {p0, p1, v0, v1}, Lmiui/app/screenelement/animation/AnimatedElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mBaseXExpression:Lmiui/app/screenelement/data/Expression;

    const-string v0, "y"

    const-string v1, "top"

    invoke-direct {p0, p1, v0, v1}, Lmiui/app/screenelement/animation/AnimatedElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mBaseYExpression:Lmiui/app/screenelement/data/Expression;

    const-string v0, "w"

    const-string v1, "width"

    invoke-direct {p0, p1, v0, v1}, Lmiui/app/screenelement/animation/AnimatedElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mWidthExpression:Lmiui/app/screenelement/data/Expression;

    const-string v0, "h"

    const-string v1, "height"

    invoke-direct {p0, p1, v0, v1}, Lmiui/app/screenelement/animation/AnimatedElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mHeightExpression:Lmiui/app/screenelement/data/Expression;

    const-string v0, "angle"

    const-string v1, "rotation"

    invoke-direct {p0, p1, v0, v1}, Lmiui/app/screenelement/animation/AnimatedElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mRotationExpression:Lmiui/app/screenelement/data/Expression;

    const-string v0, "centerX"

    const-string v1, "pivotX"

    invoke-direct {p0, p1, v0, v1}, Lmiui/app/screenelement/animation/AnimatedElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mCenterXExpression:Lmiui/app/screenelement/data/Expression;

    const-string v0, "centerY"

    const-string v1, "pivotY"

    invoke-direct {p0, p1, v0, v1}, Lmiui/app/screenelement/animation/AnimatedElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mCenterYExpression:Lmiui/app/screenelement/data/Expression;

    const-string v0, "srcid"

    invoke-direct {p0, p1, v0, v2}, Lmiui/app/screenelement/animation/AnimatedElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mSrcIdExpression:Lmiui/app/screenelement/data/Expression;

    const-string v0, "alpha"

    invoke-direct {p0, p1, v0, v2}, Lmiui/app/screenelement/animation/AnimatedElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/app/screenelement/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mAlphaExpression:Lmiui/app/screenelement/data/Expression;

    const-string v1, "src"

    const-string v2, "srcFormat"

    const-string v3, "srcParas"

    const-string v4, "srcExp"

    const-string v5, "srcFormatExp"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lmiui/app/screenelement/util/TextFormatter;->fromElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/app/screenelement/util/TextFormatter;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mSrcFormatter:Lmiui/app/screenelement/util/TextFormatter;

    const-string v0, "align"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, align:Ljava/lang/String;
    const-string v0, "absolute"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mAlignAbsolute:Z

    :cond_8a
    invoke-direct {p0, p1}, Lmiui/app/screenelement/animation/AnimatedElement;->loadSourceAnimations(Lorg/w3c/dom/Element;)V

    invoke-direct {p0, p1}, Lmiui/app/screenelement/animation/AnimatedElement;->loadPositionAnimations(Lorg/w3c/dom/Element;)V

    invoke-direct {p0, p1}, Lmiui/app/screenelement/animation/AnimatedElement;->loadRotationAnimations(Lorg/w3c/dom/Element;)V

    invoke-direct {p0, p1}, Lmiui/app/screenelement/animation/AnimatedElement;->loadSizeAnimations(Lorg/w3c/dom/Element;)V

    invoke-direct {p0, p1}, Lmiui/app/screenelement/animation/AnimatedElement;->loadAlphaAnimations(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method public reset(J)V
    .registers 6
    .parameter "time"

    .prologue
    iget-object v2, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/animation/BaseAnimation;

    .local v0, ani:Lmiui/app/screenelement/animation/BaseAnimation;
    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/animation/BaseAnimation;->reset(J)V

    goto :goto_6

    .end local v0           #ani:Lmiui/app/screenelement/animation/BaseAnimation;
    :cond_16
    return-void
.end method

.method public tick(J)V
    .registers 6
    .parameter "currentTime"

    .prologue
    iget-object v2, p0, Lmiui/app/screenelement/animation/AnimatedElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/animation/BaseAnimation;

    .local v0, ani:Lmiui/app/screenelement/animation/BaseAnimation;
    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/animation/BaseAnimation;->tick(J)V

    goto :goto_6

    .end local v0           #ani:Lmiui/app/screenelement/animation/BaseAnimation;
    :cond_16
    return-void
.end method
