.class public Lmiui/app/screenelement/data/ContentProviderBinder;
.super Ljava/lang/Object;
.source "ContentProviderBinder.java"

# interfaces
.implements Lmiui/app/screenelement/data/VariableBinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/data/ContentProviderBinder$1;,
        Lmiui/app/screenelement/data/ContentProviderBinder$MyDataSetObserver;,
        Lmiui/app/screenelement/data/ContentProviderBinder$ChangeObserver;,
        Lmiui/app/screenelement/data/ContentProviderBinder$QueryHandler;,
        Lmiui/app/screenelement/data/ContentProviderBinder$Variable;,
        Lmiui/app/screenelement/data/ContentProviderBinder$Builder;,
        Lmiui/app/screenelement/data/ContentProviderBinder$QueryCompleteListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "ContentProviderBinder"

.field private static final QUERY_TOKEN:I = 0x64

.field public static final TAG_NAME:Ljava/lang/String; = "ContentProviderBinder"

.field private static final TYPE_STRING:Ljava/lang/String; = "string"


# instance fields
.field protected mArgs:[Ljava/lang/String;

.field public mChangeObserver:Lmiui/app/screenelement/data/ContentProviderBinder$ChangeObserver;

.field protected mColumns:[Ljava/lang/String;

.field private mContext:Lmiui/app/screenelement/ScreenContext;

.field protected mCountName:Ljava/lang/String;

.field private mCountVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mCursor:Landroid/database/Cursor;

.field private mCursorLock:Ljava/lang/Object;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mDependency:Ljava/lang/String;

.field private mFinished:Z

.field private mLastQueryTime:J

.field private mLastUri:Ljava/lang/String;

.field protected mName:Ljava/lang/String;

.field protected mOrder:Ljava/lang/String;

.field private mQueryCompletedListener:Lmiui/app/screenelement/data/ContentProviderBinder$QueryCompleteListener;

.field private mQueryHandler:Lmiui/app/screenelement/data/ContentProviderBinder$QueryHandler;

.field private mUpdateInterval:I

.field protected mUriFormatter:Lmiui/app/screenelement/util/TextFormatter;

.field private mVariables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/app/screenelement/data/ContentProviderBinder$Variable;",
            ">;"
        }
    .end annotation
.end field

.field protected mWhereFormatter:Lmiui/app/screenelement/util/TextFormatter;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/ScreenContext;)V
    .registers 3
    .parameter "c"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/app/screenelement/data/ContentProviderBinder;-><init>(Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/data/ContentProviderBinder$QueryCompleteListener;)V

    return-void
.end method

.method public constructor <init>(Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/data/ContentProviderBinder$QueryCompleteListener;)V
    .registers 5
    .parameter "c"
    .parameter "l"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mVariables:Ljava/util/ArrayList;

    new-instance v0, Lmiui/app/screenelement/data/ContentProviderBinder$ChangeObserver;

    invoke-direct {v0, p0}, Lmiui/app/screenelement/data/ContentProviderBinder$ChangeObserver;-><init>(Lmiui/app/screenelement/data/ContentProviderBinder;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mChangeObserver:Lmiui/app/screenelement/data/ContentProviderBinder$ChangeObserver;

    new-instance v0, Lmiui/app/screenelement/data/ContentProviderBinder$MyDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/app/screenelement/data/ContentProviderBinder$MyDataSetObserver;-><init>(Lmiui/app/screenelement/data/ContentProviderBinder;Lmiui/app/screenelement/data/ContentProviderBinder$1;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mDataSetObserver:Landroid/database/DataSetObserver;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCursorLock:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mUpdateInterval:I

    iput-object p1, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mContext:Lmiui/app/screenelement/ScreenContext;

    new-instance v0, Lmiui/app/screenelement/data/ContentProviderBinder$QueryHandler;

    iget-object v1, p1, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lmiui/app/screenelement/data/ContentProviderBinder$QueryHandler;-><init>(Lmiui/app/screenelement/data/ContentProviderBinder;Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mQueryHandler:Lmiui/app/screenelement/data/ContentProviderBinder$QueryHandler;

    iput-object p2, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mQueryCompletedListener:Lmiui/app/screenelement/data/ContentProviderBinder$QueryCompleteListener;

    return-void
.end method

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
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/app/screenelement/data/ContentProviderBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/data/ContentProviderBinder$QueryCompleteListener;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/data/ContentProviderBinder$QueryCompleteListener;)V
    .registers 6
    .parameter "node"
    .parameter "c"
    .parameter "l"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mVariables:Ljava/util/ArrayList;

    new-instance v0, Lmiui/app/screenelement/data/ContentProviderBinder$ChangeObserver;

    invoke-direct {v0, p0}, Lmiui/app/screenelement/data/ContentProviderBinder$ChangeObserver;-><init>(Lmiui/app/screenelement/data/ContentProviderBinder;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mChangeObserver:Lmiui/app/screenelement/data/ContentProviderBinder$ChangeObserver;

    new-instance v0, Lmiui/app/screenelement/data/ContentProviderBinder$MyDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/app/screenelement/data/ContentProviderBinder$MyDataSetObserver;-><init>(Lmiui/app/screenelement/data/ContentProviderBinder;Lmiui/app/screenelement/data/ContentProviderBinder$1;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mDataSetObserver:Landroid/database/DataSetObserver;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCursorLock:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mUpdateInterval:I

    iput-object p2, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mContext:Lmiui/app/screenelement/ScreenContext;

    new-instance v0, Lmiui/app/screenelement/data/ContentProviderBinder$QueryHandler;

    iget-object v1, p2, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lmiui/app/screenelement/data/ContentProviderBinder$QueryHandler;-><init>(Lmiui/app/screenelement/data/ContentProviderBinder;Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mQueryHandler:Lmiui/app/screenelement/data/ContentProviderBinder$QueryHandler;

    iput-object p3, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mQueryCompletedListener:Lmiui/app/screenelement/data/ContentProviderBinder$QueryCompleteListener;

    invoke-direct {p0, p1}, Lmiui/app/screenelement/data/ContentProviderBinder;->load(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method static synthetic access$200(Lmiui/app/screenelement/data/ContentProviderBinder;Landroid/database/Cursor;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lmiui/app/screenelement/data/ContentProviderBinder;->onQueryComplete(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$300(Lmiui/app/screenelement/data/ContentProviderBinder;)Z
    .registers 2
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mFinished:Z

    return v0
.end method

.method static synthetic access$400(Lmiui/app/screenelement/data/ContentProviderBinder;)V
    .registers 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lmiui/app/screenelement/data/ContentProviderBinder;->updateVariables()V

    return-void
.end method

.method static synthetic access$500(Lmiui/app/screenelement/data/ContentProviderBinder;)Lmiui/app/screenelement/data/ContentProviderBinder$QueryCompleteListener;
    .registers 2
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mQueryCompletedListener:Lmiui/app/screenelement/data/ContentProviderBinder$QueryCompleteListener;

    return-object v0
.end method

.method private closeCursor()V
    .registers 4

    .prologue
    iget-object v1, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCursorLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_9

    monitor-exit v1

    :goto_8
    return-void

    :cond_9
    iget v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mUpdateInterval:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1c

    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mChangeObserver:Lmiui/app/screenelement/data/ContentProviderBinder$ChangeObserver;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1c
    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    monitor-exit v1

    goto :goto_8

    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v0
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .registers 8
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    if-nez p1, :cond_12

    const-string v1, "ContentProviderBinder"

    const-string v2, "ContentProviderBinder node is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lmiui/app/screenelement/ScreenElementLoadException;

    const-string v2, "node is null"

    invoke-direct {v1, v2}, Lmiui/app/screenelement/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    const-string v1, "name"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mName:Ljava/lang/String;

    const-string v1, "dependency"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mDependency:Ljava/lang/String;

    new-instance v1, Lmiui/app/screenelement/util/TextFormatter;

    const-string v3, "uri"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "uriFormat"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "uriParas"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v4, v5}, Lmiui/app/screenelement/util/TextFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mUriFormatter:Lmiui/app/screenelement/util/TextFormatter;

    const-string v1, "columns"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, tmp:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_ad

    move-object v1, v2

    :goto_48
    iput-object v1, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mColumns:[Ljava/lang/String;

    new-instance v1, Lmiui/app/screenelement/util/TextFormatter;

    const-string v3, "where"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "whereFormat"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "whereParas"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v4, v5}, Lmiui/app/screenelement/util/TextFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mWhereFormatter:Lmiui/app/screenelement/util/TextFormatter;

    const-string v1, "args"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b4

    move-object v1, v2

    :goto_70
    iput-object v1, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mArgs:[Ljava/lang/String;

    const-string v1, "order"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7f

    move-object v0, v2

    .end local v0           #tmp:Ljava/lang/String;
    :cond_7f
    iput-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mOrder:Ljava/lang/String;

    const-string v1, "countName"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #tmp:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_bb

    :goto_8d
    iput-object v2, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    iget-object v1, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    if-eqz v1, :cond_a0

    new-instance v1, Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v2, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    iget-object v3, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v3, v3, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v1, v2, v3}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v1, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCountVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    :cond_a0
    const-string v1, "updateInterval"

    const/4 v2, -0x1

    invoke-static {p1, v1, v2}, Lmiui/app/screenelement/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mUpdateInterval:I

    invoke-direct {p0, p1}, Lmiui/app/screenelement/data/ContentProviderBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    return-void

    :cond_ad
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_48

    :cond_b4
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_70

    :cond_bb
    move-object v2, v0

    goto :goto_8d
.end method

.method private loadVariables(Lorg/w3c/dom/Element;)V
    .registers 7
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const-string v3, "Variable"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .local v2, variables:Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_22

    new-instance v1, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    iget-object v4, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v4, v4, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v1, v3, v4}, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/data/Variables;)V

    .local v1, v:Lmiui/app/screenelement/data/ContentProviderBinder$Variable;
    invoke-virtual {p0, v1}, Lmiui/app/screenelement/data/ContentProviderBinder;->addVariable(Lmiui/app/screenelement/data/ContentProviderBinder$Variable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .end local v1           #v:Lmiui/app/screenelement/data/ContentProviderBinder$Variable;
    :cond_22
    return-void
.end method

.method private onQueryComplete(Landroid/database/Cursor;)V
    .registers 6
    .parameter "cursor"

    .prologue
    const/4 v3, -0x1

    invoke-direct {p0}, Lmiui/app/screenelement/data/ContentProviderBinder;->closeCursor()V

    iget-boolean v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mFinished:Z

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iput-object p1, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCursorLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_e
    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_38

    iget v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mUpdateInterval:I

    if-ne v0, v3, :cond_24

    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mChangeObserver:Lmiui/app/screenelement/data/ContentProviderBinder$ChangeObserver;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_24
    invoke-direct {p0}, Lmiui/app/screenelement/data/ContentProviderBinder;->updateVariables()V

    iget v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mUpdateInterval:I

    if-eq v0, v3, :cond_33

    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    :cond_33
    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenContext;->requestUpdate()V

    :cond_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_e .. :try_end_39} :catchall_45

    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mQueryCompletedListener:Lmiui/app/screenelement/data/ContentProviderBinder$QueryCompleteListener;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mQueryCompletedListener:Lmiui/app/screenelement/data/ContentProviderBinder$QueryCompleteListener;

    iget-object v1, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lmiui/app/screenelement/data/ContentProviderBinder$QueryCompleteListener;->onQueryCompleted(Ljava/lang/String;)V

    goto :goto_8

    :catchall_45
    move-exception v0

    :try_start_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v0
.end method

.method private setNull(Lmiui/app/screenelement/data/ContentProviderBinder$Variable;)V
    .registers 5
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    const-string v0, "string"

    iget-object v1, p1, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p1, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->mStringVar:Lmiui/app/screenelement/util/IndexedStringVariable;

    invoke-virtual {v0, v2}, Lmiui/app/screenelement/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    :goto_10
    return-void

    :cond_11
    iget-object v0, p1, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->mNumberVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    invoke-virtual {v0, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(Ljava/lang/Double;)V

    goto :goto_10
.end method

.method private updateVariables()V
    .registers 15

    .prologue
    const/4 v2, 0x0

    iget-object v11, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCursorLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_4
    iget-object v10, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    if-nez v10, :cond_55

    .local v2, count:I
    :goto_8
    iget-object v10, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCountVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    if-eqz v10, :cond_12

    iget-object v10, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCountVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    int-to-double v12, v2

    invoke-virtual {v10, v12, v13}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    :cond_12
    const-string v10, "ContentProviderBinder"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "query result count: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mLastUri:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    if-eqz v10, :cond_3c

    if-nez v2, :cond_5e

    :cond_3c
    iget-object v10, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_42
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;

    .local v6, v:Lmiui/app/screenelement/data/ContentProviderBinder$Variable;
    invoke-direct {p0, v6}, Lmiui/app/screenelement/data/ContentProviderBinder;->setNull(Lmiui/app/screenelement/data/ContentProviderBinder$Variable;)V

    goto :goto_42

    .end local v2           #count:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #v:Lmiui/app/screenelement/data/ContentProviderBinder$Variable;
    :catchall_52
    move-exception v10

    monitor-exit v11
    :try_end_54
    .catchall {:try_start_4 .. :try_end_54} :catchall_52

    throw v10

    :cond_55
    :try_start_55
    iget-object v10, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    goto :goto_8

    .restart local v2       #count:I
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_5c
    monitor-exit v11

    :goto_5d
    return-void

    .end local v4           #i$:Ljava/util/Iterator;
    :cond_5e
    const-string v10, "ContentProviderBinder"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateVariables: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mLastUri:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_7e
    :goto_7e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_14b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;

    .restart local v6       #v:Lmiui/app/screenelement/data/ContentProviderBinder$Variable;
    const/4 v5, 0x1

    .local v5, isNull:Z
    const-string v9, "null"

    .local v9, valueStr:Ljava/lang/String;
    iget-object v10, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    iget v12, v6, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->mRow:I

    invoke-interface {v10, v12}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_94
    .catchall {:try_start_55 .. :try_end_94} :catchall_52

    move-result v10

    if-eqz v10, :cond_bd

    :try_start_97
    iget-object v1, v6, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->mColumn:Ljava/lang/String;

    .local v1, column:Ljava/lang/String;
    iget-object v10, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .local v0, col:I
    iget-object v10, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v10, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-nez v10, :cond_bd

    const-string v10, "string"

    iget-object v12, v6, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->mType:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c3

    iget-object v10, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v6, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->mStringVar:Lmiui/app/screenelement/util/IndexedStringVariable;

    invoke-virtual {v10, v9}, Lmiui/app/screenelement/util/IndexedStringVariable;->set(Ljava/lang/String;)V
    :try_end_bc
    .catchall {:try_start_97 .. :try_end_bc} :catchall_52
    .catch Ljava/lang/NumberFormatException; {:try_start_97 .. :try_end_bc} :catch_d9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_97 .. :try_end_bc} :catch_100

    :cond_bc
    :goto_bc
    const/4 v5, 0x0

    .end local v0           #col:I
    .end local v1           #column:Ljava/lang/String;
    :cond_bd
    :goto_bd
    if-eqz v5, :cond_7e

    :try_start_bf
    invoke-direct {p0, v6}, Lmiui/app/screenelement/data/ContentProviderBinder;->setNull(Lmiui/app/screenelement/data/ContentProviderBinder$Variable;)V
    :try_end_c2
    .catchall {:try_start_bf .. :try_end_c2} :catchall_52

    goto :goto_7e

    .restart local v0       #col:I
    .restart local v1       #column:Ljava/lang/String;
    :cond_c3
    :try_start_c3
    const-string v10, "double"

    iget-object v12, v6, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->mType:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e9

    iget-object v10, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v7

    .local v7, value:D
    iget-object v10, v6, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->mNumberVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    invoke-virtual {v10, v7, v8}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V
    :try_end_d8
    .catchall {:try_start_c3 .. :try_end_d8} :catchall_52
    .catch Ljava/lang/NumberFormatException; {:try_start_c3 .. :try_end_d8} :catch_d9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c3 .. :try_end_d8} :catch_100

    goto :goto_bc

    .end local v0           #col:I
    .end local v1           #column:Ljava/lang/String;
    .end local v7           #value:D
    :catch_d9
    move-exception v3

    .local v3, e:Ljava/lang/NumberFormatException;
    :try_start_da
    const-string v10, "ContentProviderBinder"

    const-string v12, "failed to get value from cursor"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e8
    .catchall {:try_start_da .. :try_end_e8} :catchall_52

    goto :goto_bd

    .end local v3           #e:Ljava/lang/NumberFormatException;
    .restart local v0       #col:I
    .restart local v1       #column:Ljava/lang/String;
    :cond_e9
    :try_start_e9
    const-string v10, "float"

    iget-object v12, v6, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->mType:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_11c

    iget-object v10, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v7

    .local v7, value:F
    iget-object v10, v6, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->mNumberVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    float-to-double v12, v7

    invoke-virtual {v10, v12, v13}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V
    :try_end_ff
    .catchall {:try_start_e9 .. :try_end_ff} :catchall_52
    .catch Ljava/lang/NumberFormatException; {:try_start_e9 .. :try_end_ff} :catch_d9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e9 .. :try_end_ff} :catch_100

    goto :goto_bc

    .end local v0           #col:I
    .end local v1           #column:Ljava/lang/String;
    .end local v7           #value:F
    :catch_100
    move-exception v3

    .local v3, e:Ljava/lang/IllegalArgumentException;
    :try_start_101
    const-string v10, "ContentProviderBinder"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "column does not exist: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v6, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->mColumn:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11b
    .catchall {:try_start_101 .. :try_end_11b} :catchall_52

    goto :goto_bd

    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #col:I
    .restart local v1       #column:Ljava/lang/String;
    :cond_11c
    :try_start_11c
    const-string v10, "int"

    iget-object v12, v6, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->mType:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_133

    iget-object v10, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .local v7, value:I
    iget-object v10, v6, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->mNumberVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    int-to-double v12, v7

    invoke-virtual {v10, v12, v13}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    goto :goto_bc

    .end local v7           #value:I
    :cond_133
    const-string v10, "long"

    iget-object v12, v6, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->mType:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_bc

    iget-object v10, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .local v7, value:J
    iget-object v10, v6, Lmiui/app/screenelement/data/ContentProviderBinder$Variable;->mNumberVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    long-to-double v12, v7

    invoke-virtual {v10, v12, v13}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V
    :try_end_149
    .catchall {:try_start_11c .. :try_end_149} :catchall_52
    .catch Ljava/lang/NumberFormatException; {:try_start_11c .. :try_end_149} :catch_d9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11c .. :try_end_149} :catch_100

    goto/16 :goto_bc

    .end local v0           #col:I
    .end local v1           #column:Ljava/lang/String;
    .end local v5           #isNull:Z
    .end local v6           #v:Lmiui/app/screenelement/data/ContentProviderBinder$Variable;
    .end local v7           #value:J
    .end local v9           #valueStr:Ljava/lang/String;
    :cond_14b
    :try_start_14b
    monitor-exit v11
    :try_end_14c
    .catchall {:try_start_14b .. :try_end_14c} :catchall_52

    goto/16 :goto_5d
.end method


# virtual methods
.method protected addVariable(Lmiui/app/screenelement/data/ContentProviderBinder$Variable;)V
    .registers 3
    .parameter "v"

    .prologue
    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public createCountVar()V
    .registers 4

    .prologue
    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCountVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    :goto_7
    return-void

    :cond_8
    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    iget-object v2, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mCountVar:Lmiui/app/screenelement/util/IndexedNumberVariable;

    goto :goto_7
.end method

.method public finish()V
    .registers 2

    .prologue
    invoke-direct {p0}, Lmiui/app/screenelement/data/ContentProviderBinder;->closeCursor()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mFinished:Z

    return-void
.end method

.method public getDependency()Ljava/lang/String;
    .registers 2

    .prologue
    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mDependency:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    invoke-virtual {p0}, Lmiui/app/screenelement/data/ContentProviderBinder;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .registers 2

    .prologue
    invoke-virtual {p0}, Lmiui/app/screenelement/data/ContentProviderBinder;->getDependency()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lmiui/app/screenelement/data/ContentProviderBinder;->startQuery()V

    :cond_d
    return-void
.end method

.method public onContentChanged()V
    .registers 3

    .prologue
    const-string v0, "ContentProviderBinder"

    const-string v1, "ChangeObserver: content changed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mFinished:Z

    if-eqz v0, :cond_c

    :goto_b
    return-void

    :cond_c
    invoke-virtual {p0}, Lmiui/app/screenelement/data/ContentProviderBinder;->startQuery()V

    goto :goto_b
.end method

.method public pause()V
    .registers 1

    .prologue
    return-void
.end method

.method public refresh()V
    .registers 1

    .prologue
    invoke-virtual {p0}, Lmiui/app/screenelement/data/ContentProviderBinder;->startQuery()V

    return-void
.end method

.method public resume()V
    .registers 5

    .prologue
    iget v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mUpdateInterval:I

    if-lez v0, :cond_17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mLastQueryTime:J

    sub-long/2addr v0, v2

    iget v2, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mUpdateInterval:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_17

    invoke-virtual {p0}, Lmiui/app/screenelement/data/ContentProviderBinder;->startQuery()V

    :cond_17
    return-void
.end method

.method public startQuery()V
    .registers 9

    .prologue
    const/16 v1, 0x64

    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mQueryHandler:Lmiui/app/screenelement/data/ContentProviderBinder$QueryHandler;

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/data/ContentProviderBinder$QueryHandler;->cancelOperation(I)V

    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mUriFormatter:Lmiui/app/screenelement/util/TextFormatter;

    iget-object v2, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-virtual {v0, v2}, Lmiui/app/screenelement/util/TextFormatter;->getText(Lmiui/app/screenelement/data/Variables;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mLastUri:Ljava/lang/String;

    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mWhereFormatter:Lmiui/app/screenelement/util/TextFormatter;

    iget-object v2, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-virtual {v0, v2}, Lmiui/app/screenelement/util/TextFormatter;->getText(Lmiui/app/screenelement/data/Variables;)Ljava/lang/String;

    move-result-object v5

    .local v5, where:Ljava/lang/String;
    iget-object v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mQueryHandler:Lmiui/app/screenelement/data/ContentProviderBinder$QueryHandler;

    const/4 v2, 0x0

    iget-object v4, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mColumns:[Ljava/lang/String;

    iget-object v6, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mArgs:[Ljava/lang/String;

    iget-object v7, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mOrder:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lmiui/app/screenelement/data/ContentProviderBinder$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/app/screenelement/data/ContentProviderBinder;->mLastQueryTime:J

    return-void
.end method
