.class Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;
.super Ljava/lang/Object;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockAction"
.end annotation


# instance fields
.field public mCommand:Lmiui/app/screenelement/ActionCommand;

.field public mConfigTaskLoaded:Z

.field public mTask:Lmiui/app/screenelement/util/Task;

.field public mTrigger:Lmiui/app/screenelement/CommandTrigger;

.field final synthetic this$0:Lmiui/app/screenelement/elements/AdvancedSlider;


# direct methods
.method private constructor <init>(Lmiui/app/screenelement/elements/AdvancedSlider;)V
    .registers 2
    .parameter

    .prologue
    .line 604
    iput-object p1, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/app/screenelement/elements/AdvancedSlider;Lmiui/app/screenelement/elements/AdvancedSlider$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 604
    invoke-direct {p0, p1}, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;-><init>(Lmiui/app/screenelement/elements/AdvancedSlider;)V

    return-void
.end method

.method private performTask()Landroid/content/Intent;
    .registers 6

    .prologue
    .line 625
    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/app/screenelement/util/Task;

    if-nez v2, :cond_6

    .line 626
    const/4 v1, 0x0

    .line 653
    :cond_5
    :goto_5
    return-object v1

    .line 628
    :cond_6
    const/4 v1, 0x0

    .line 629
    .local v1, intent:Landroid/content/Intent;
    iget-boolean v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mConfigTaskLoaded:Z

    if-nez v2, :cond_26

    .line 630
    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    iget-object v2, v2, Lmiui/app/screenelement/elements/ScreenElement;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    iget-object v3, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/app/screenelement/util/Task;

    iget-object v3, v3, Lmiui/app/screenelement/util/Task;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lmiui/app/screenelement/ScreenElementRoot;->findTask(Ljava/lang/String;)Lmiui/app/screenelement/util/Task;

    move-result-object v0

    .line 634
    .local v0, configTask:Lmiui/app/screenelement/util/Task;
    if-eqz v0, :cond_23

    iget-object v2, v0, Lmiui/app/screenelement/util/Task;->action:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 635
    iput-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/app/screenelement/util/Task;

    .line 637
    :cond_23
    const/4 v2, 0x1

    iput-boolean v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mConfigTaskLoaded:Z

    .line 640
    .end local v0           #configTask:Lmiui/app/screenelement/util/Task;
    :cond_26
    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/app/screenelement/util/Task;

    iget-object v2, v2, Lmiui/app/screenelement/util/Task;->action:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 641
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/app/screenelement/util/Task;

    iget-object v2, v2, Lmiui/app/screenelement/util/Task;->action:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 642
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/app/screenelement/util/Task;

    iget-object v2, v2, Lmiui/app/screenelement/util/Task;->type:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4a

    .line 643
    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/app/screenelement/util/Task;

    iget-object v2, v2, Lmiui/app/screenelement/util/Task;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 644
    :cond_4a
    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/app/screenelement/util/Task;

    iget-object v2, v2, Lmiui/app/screenelement/util/Task;->category:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5b

    .line 645
    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/app/screenelement/util/Task;

    iget-object v2, v2, Lmiui/app/screenelement/util/Task;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 646
    :cond_5b
    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/app/screenelement/util/Task;

    iget-object v2, v2, Lmiui/app/screenelement/util/Task;->packageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7f

    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/app/screenelement/util/Task;

    iget-object v2, v2, Lmiui/app/screenelement/util/Task;->className:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7f

    .line 647
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/app/screenelement/util/Task;

    iget-object v3, v3, Lmiui/app/screenelement/util/Task;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/app/screenelement/util/Task;

    iget-object v4, v4, Lmiui/app/screenelement/util/Task;->className:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 649
    :cond_7f
    const/high16 v2, 0x3400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_5
.end method


# virtual methods
.method public finish()V
    .registers 2

    .prologue
    .line 657
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mCommand:Lmiui/app/screenelement/ActionCommand;

    if-eqz v0, :cond_9

    .line 658
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mCommand:Lmiui/app/screenelement/ActionCommand;

    invoke-virtual {v0}, Lmiui/app/screenelement/ActionCommand;->finish()V

    .line 659
    :cond_9
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mTrigger:Lmiui/app/screenelement/CommandTrigger;

    if-eqz v0, :cond_12

    .line 660
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mTrigger:Lmiui/app/screenelement/CommandTrigger;

    invoke-virtual {v0}, Lmiui/app/screenelement/CommandTrigger;->finish()V

    .line 661
    :cond_12
    return-void
.end method

.method public init()V
    .registers 2

    .prologue
    .line 664
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mCommand:Lmiui/app/screenelement/ActionCommand;

    if-eqz v0, :cond_9

    .line 665
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mCommand:Lmiui/app/screenelement/ActionCommand;

    invoke-virtual {v0}, Lmiui/app/screenelement/ActionCommand;->init()V

    .line 666
    :cond_9
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mTrigger:Lmiui/app/screenelement/CommandTrigger;

    if-eqz v0, :cond_12

    .line 667
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mTrigger:Lmiui/app/screenelement/CommandTrigger;

    invoke-virtual {v0}, Lmiui/app/screenelement/CommandTrigger;->init()V

    .line 668
    :cond_12
    return-void
.end method

.method public pause()V
    .registers 2

    .prologue
    .line 671
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mCommand:Lmiui/app/screenelement/ActionCommand;

    if-eqz v0, :cond_9

    .line 672
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mCommand:Lmiui/app/screenelement/ActionCommand;

    invoke-virtual {v0}, Lmiui/app/screenelement/ActionCommand;->pause()V

    .line 673
    :cond_9
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mTrigger:Lmiui/app/screenelement/CommandTrigger;

    if-eqz v0, :cond_12

    .line 674
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mTrigger:Lmiui/app/screenelement/CommandTrigger;

    invoke-virtual {v0}, Lmiui/app/screenelement/CommandTrigger;->pause()V

    .line 675
    :cond_12
    return-void
.end method

.method public perform()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 614
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/app/screenelement/util/Task;

    if-eqz v0, :cond_9

    .line 615
    invoke-direct {p0}, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->performTask()Landroid/content/Intent;

    move-result-object v0

    .line 621
    :goto_8
    return-object v0

    .line 616
    :cond_9
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mCommand:Lmiui/app/screenelement/ActionCommand;

    if-eqz v0, :cond_14

    .line 617
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mCommand:Lmiui/app/screenelement/ActionCommand;

    invoke-virtual {v0}, Lmiui/app/screenelement/ActionCommand;->perform()V

    .line 621
    :cond_12
    :goto_12
    const/4 v0, 0x0

    goto :goto_8

    .line 618
    :cond_14
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mTrigger:Lmiui/app/screenelement/CommandTrigger;

    if-eqz v0, :cond_12

    .line 619
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mTrigger:Lmiui/app/screenelement/CommandTrigger;

    invoke-virtual {v0}, Lmiui/app/screenelement/CommandTrigger;->perform()V

    goto :goto_12
.end method

.method public resume()V
    .registers 2

    .prologue
    .line 678
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mCommand:Lmiui/app/screenelement/ActionCommand;

    if-eqz v0, :cond_9

    .line 679
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mCommand:Lmiui/app/screenelement/ActionCommand;

    invoke-virtual {v0}, Lmiui/app/screenelement/ActionCommand;->resume()V

    .line 680
    :cond_9
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mTrigger:Lmiui/app/screenelement/CommandTrigger;

    if-eqz v0, :cond_12

    .line 681
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mTrigger:Lmiui/app/screenelement/CommandTrigger;

    invoke-virtual {v0}, Lmiui/app/screenelement/CommandTrigger;->resume()V

    .line 682
    :cond_12
    return-void
.end method