.class public abstract Lmiui/app/screenelement/data/NotifierVariableUpdater;
.super Lmiui/app/screenelement/data/VariableUpdater;
.source "NotifierVariableUpdater.java"

# interfaces
.implements Lmiui/app/screenelement/NotifierManager$OnNotifyListener;


# instance fields
.field protected mNotifierManager:Lmiui/app/screenelement/NotifierManager;

.field private mType:Lmiui/app/screenelement/NotifierManager$NotifierType;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/data/VariableUpdaterManager;Lmiui/app/screenelement/NotifierManager$NotifierType;)V
    .registers 4
    .parameter "m"
    .parameter "type"

    .prologue
    invoke-direct {p0, p1}, Lmiui/app/screenelement/data/VariableUpdater;-><init>(Lmiui/app/screenelement/data/VariableUpdaterManager;)V

    iput-object p2, p0, Lmiui/app/screenelement/data/NotifierVariableUpdater;->mType:Lmiui/app/screenelement/NotifierManager$NotifierType;

    invoke-virtual {p1}, Lmiui/app/screenelement/data/VariableUpdaterManager;->getContext()Lmiui/app/screenelement/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenContext;->getRawContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiui/app/screenelement/NotifierManager;->getInstance(Landroid/content/Context;)Lmiui/app/screenelement/NotifierManager;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/data/NotifierVariableUpdater;->mNotifierManager:Lmiui/app/screenelement/NotifierManager;

    return-void
.end method


# virtual methods
.method public finish()V
    .registers 3

    .prologue
    iget-object v0, p0, Lmiui/app/screenelement/data/NotifierVariableUpdater;->mNotifierManager:Lmiui/app/screenelement/NotifierManager;

    iget-object v1, p0, Lmiui/app/screenelement/data/NotifierVariableUpdater;->mType:Lmiui/app/screenelement/NotifierManager$NotifierType;

    invoke-virtual {v0, v1, p0}, Lmiui/app/screenelement/NotifierManager;->releaseNotifier(Lmiui/app/screenelement/NotifierManager$NotifierType;Lmiui/app/screenelement/NotifierManager$OnNotifyListener;)V

    return-void
.end method

.method public init()V
    .registers 3

    .prologue
    iget-object v0, p0, Lmiui/app/screenelement/data/NotifierVariableUpdater;->mNotifierManager:Lmiui/app/screenelement/NotifierManager;

    iget-object v1, p0, Lmiui/app/screenelement/data/NotifierVariableUpdater;->mType:Lmiui/app/screenelement/NotifierManager$NotifierType;

    invoke-virtual {v0, v1, p0}, Lmiui/app/screenelement/NotifierManager;->acquireNotifier(Lmiui/app/screenelement/NotifierManager$NotifierType;Lmiui/app/screenelement/NotifierManager$OnNotifyListener;)V

    return-void
.end method

.method public abstract onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
.end method

.method public pause()V
    .registers 3

    .prologue
    iget-object v0, p0, Lmiui/app/screenelement/data/NotifierVariableUpdater;->mNotifierManager:Lmiui/app/screenelement/NotifierManager;

    iget-object v1, p0, Lmiui/app/screenelement/data/NotifierVariableUpdater;->mType:Lmiui/app/screenelement/NotifierManager$NotifierType;

    invoke-virtual {v0, v1, p0}, Lmiui/app/screenelement/NotifierManager;->pause(Lmiui/app/screenelement/NotifierManager$NotifierType;Lmiui/app/screenelement/NotifierManager$OnNotifyListener;)V

    return-void
.end method

.method public resume()V
    .registers 3

    .prologue
    iget-object v0, p0, Lmiui/app/screenelement/data/NotifierVariableUpdater;->mNotifierManager:Lmiui/app/screenelement/NotifierManager;

    iget-object v1, p0, Lmiui/app/screenelement/data/NotifierVariableUpdater;->mType:Lmiui/app/screenelement/NotifierManager$NotifierType;

    invoke-virtual {v0, v1, p0}, Lmiui/app/screenelement/NotifierManager;->resume(Lmiui/app/screenelement/NotifierManager$NotifierType;Lmiui/app/screenelement/NotifierManager$OnNotifyListener;)V

    return-void
.end method
