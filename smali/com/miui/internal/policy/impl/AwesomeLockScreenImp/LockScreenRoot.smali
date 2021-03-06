.class public Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;
.super Lmiui/app/screenelement/ScreenElementRoot;
.source "LockScreenRoot.java"

# interfaces
.implements Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LockScreenRoot"

.field public static final SMS_BODY_PREVIEW:Ljava/lang/String; = "sms_body_preview"

.field private static final TAG_NAME_BATTERYFULL:Ljava/lang/String; = "BatteryFull"

.field private static final TAG_NAME_CHARGING:Ljava/lang/String; = "Charging"

.field private static final TAG_NAME_LOWBATTERY:Ljava/lang/String; = "BatteryLow"

.field private static final TAG_NAME_NORMAL:Ljava/lang/String; = "Normal"


# instance fields
.field private curCategory:Ljava/lang/String;

.field private mBatteryLevel:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mBatteryState:Lmiui/app/screenelement/util/IndexedNumberVariable;

.field private mDisplayDesktop:Z

.field private mFrameRateBatteryFull:F

.field private mFrameRateBatteryLow:F

.field private mFrameRateCharging:F

.field private final mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/ScreenContext;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;)V
    .registers 6
    .parameter "c"
    .parameter "unlockerCallback"

    .prologue
    invoke-direct {p0, p1}, Lmiui/app/screenelement/ScreenElementRoot;-><init>(Lmiui/app/screenelement/ScreenContext;)V

    iput-object p2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "battery_state"

    iget-object v2, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryState:Lmiui/app/screenelement/util/IndexedNumberVariable;

    new-instance v0, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v1, "battery_level"

    iget-object v2, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    iput-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryLevel:Lmiui/app/screenelement/util/IndexedNumberVariable;

    return-void
.end method


# virtual methods
.method protected createElementGroup(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)Lmiui/app/screenelement/elements/ElementGroup;
    .registers 5
    .parameter "root"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;

    iget-object v1, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-direct {v0, p1, v1, p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;)V

    return-object v0
.end method

.method public endUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V
    .registers 3
    .parameter "ele"

    .prologue
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    check-cast v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;

    invoke-virtual {v0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;->endUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    :cond_b
    return-void
.end method

.method public findTask(Ljava/lang/String;)Lmiui/app/screenelement/util/Task;
    .registers 3
    .parameter "id"

    .prologue
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    invoke-interface {v0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;->findTask(Ljava/lang/String;)Lmiui/app/screenelement/util/Task;

    move-result-object v0

    return-object v0
.end method

.method public haptic(I)V
    .registers 3
    .parameter "effectId"

    .prologue
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    invoke-interface {v0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;->haptic(I)V

    return-void
.end method

.method public init()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    invoke-super {p0}, Lmiui/app/screenelement/ScreenElementRoot;->init()V

    new-instance v0, Lmiui/security/ChooseLockSettingsHelper;

    iget-object v3, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v3, v3, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lmiui/security/ChooseLockSettingsHelper;-><init>(Landroid/content/Context;)V

    .local v0, helper:Lmiui/security/ChooseLockSettingsHelper;
    iget-object v3, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v3, v3, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pref_key_enable_notification_body"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_50

    iget-object v3, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v3, v3, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    const-string v4, "com.android.mms"

    invoke-static {v3, v4}, Lmiui/net/FirewallManager;->isAccessControlProtected(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-virtual {v0}, Lmiui/security/ChooseLockSettingsHelper;->isACLockEnabled()Z

    move-result v3

    if-nez v3, :cond_50

    :cond_2f
    invoke-virtual {v0}, Lmiui/security/ChooseLockSettingsHelper;->isPrivacyModeEnabled()Z

    move-result v3

    if-nez v3, :cond_50

    iget-object v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    invoke-interface {v3}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;->isSecure()Z

    move-result v3

    if-nez v3, :cond_50

    .local v2, showSmsBodySetting:Z
    :goto_3d
    new-instance v1, Lmiui/app/screenelement/util/IndexedNumberVariable;

    const-string v3, "sms_body_preview"

    iget-object v4, p0, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v4, v4, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/data/Variables;

    invoke-direct {v1, v3, v4}, Lmiui/app/screenelement/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/app/screenelement/data/Variables;)V

    .local v1, showSms:Lmiui/app/screenelement/util/IndexedNumberVariable;
    if-eqz v2, :cond_52

    const-wide/high16 v3, 0x3ff0

    :goto_4c
    invoke-virtual {v1, v3, v4}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    return-void

    .end local v1           #showSms:Lmiui/app/screenelement/util/IndexedNumberVariable;
    .end local v2           #showSmsBodySetting:Z
    :cond_50
    const/4 v2, 0x0

    goto :goto_3d

    .restart local v1       #showSms:Lmiui/app/screenelement/util/IndexedNumberVariable;
    .restart local v2       #showSmsBodySetting:Z
    :cond_52
    const-wide/16 v3, 0x0

    goto :goto_4c
.end method

.method public isDisplayDesktop()Z
    .registers 2

    .prologue
    iget-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mDisplayDesktop:Z

    return v0
.end method

.method protected onAddVariableUpdater(Lmiui/app/screenelement/data/VariableUpdaterManager;)V
    .registers 3
    .parameter "m"

    .prologue
    invoke-super {p0, p1}, Lmiui/app/screenelement/ScreenElementRoot;->onAddVariableUpdater(Lmiui/app/screenelement/data/VariableUpdaterManager;)V

    new-instance v0, Lmiui/app/screenelement/data/BatteryVariableUpdater;

    invoke-direct {v0, p1}, Lmiui/app/screenelement/data/BatteryVariableUpdater;-><init>(Lmiui/app/screenelement/data/VariableUpdaterManager;)V

    invoke-virtual {p1, v0}, Lmiui/app/screenelement/data/VariableUpdaterManager;->add(Lmiui/app/screenelement/data/VariableUpdater;)V

    new-instance v0, Lmiui/app/screenelement/data/VolumeVariableUpdater;

    invoke-direct {v0, p1}, Lmiui/app/screenelement/data/VolumeVariableUpdater;-><init>(Lmiui/app/screenelement/data/VariableUpdaterManager;)V

    invoke-virtual {p1, v0}, Lmiui/app/screenelement/data/VariableUpdaterManager;->add(Lmiui/app/screenelement/data/VariableUpdater;)V

    return-void
.end method

.method public onButtonInteractive(Lmiui/app/screenelement/elements/ButtonScreenElement;Lmiui/app/screenelement/elements/ButtonScreenElement$ButtonAction;)V
    .registers 4
    .parameter "e"
    .parameter "a"

    .prologue
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    invoke-interface {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;->pokeWakelock()V

    return-void
.end method

.method protected onLoad(Lorg/w3c/dom/Element;)Z
    .registers 4
    .parameter "root"

    .prologue
    invoke-super {p0, p1}, Lmiui/app/screenelement/ScreenElementRoot;->onLoad(Lorg/w3c/dom/Element;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const-string v0, "displayDesktop"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mDisplayDesktop:Z

    const-string v0, "frameRateCharging"

    iget v1, p0, Lmiui/app/screenelement/ScreenElementRoot;->mNormalFrameRate:F

    invoke-static {p1, v0, v1}, Lmiui/app/screenelement/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRateCharging:F

    const-string v0, "frameRateBatteryLow"

    iget v1, p0, Lmiui/app/screenelement/ScreenElementRoot;->mNormalFrameRate:F

    invoke-static {p1, v0, v1}, Lmiui/app/screenelement/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRateBatteryLow:F

    const-string v0, "frameRateBatteryFull"

    iget v1, p0, Lmiui/app/screenelement/ScreenElementRoot;->mNormalFrameRate:F

    invoke-static {p1, v0, v1}, Lmiui/app/screenelement/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRateBatteryFull:F

    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mVariableBinderManager:Lmiui/app/screenelement/data/VariableBinderManager;

    invoke-static {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/BuiltinVariableBinders;->fill(Lmiui/app/screenelement/data/VariableBinderManager;)V

    const/4 v0, 0x1

    goto :goto_7
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .registers 10
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    const/4 v5, 0x0

    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryLevel:Lmiui/app/screenelement/util/IndexedNumberVariable;

    int-to-double v3, p3

    invoke-virtual {v2, v3, v4}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    iget-object v2, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    if-nez v2, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->curCategory:Ljava/lang/String;

    .local v0, newCategory:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, state:I
    if-eqz p1, :cond_65

    if-eqz p2, :cond_5d

    const/16 v2, 0x64

    if-lt p3, v2, :cond_55

    const-string v0, "BatteryFull"

    const/4 v1, 0x3

    iget v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRateBatteryFull:F

    iput v2, p0, Lmiui/app/screenelement/ScreenElementRoot;->mFrameRate:F

    :goto_1e
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->curCategory:Ljava/lang/String;

    if-eq v0, v2, :cond_b

    iget v2, p0, Lmiui/app/screenelement/ScreenElementRoot;->mFrameRate:F

    invoke-virtual {p0, v2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->requestFramerate(F)V

    invoke-virtual {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->requestUpdate()V

    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mBatteryState:Lmiui/app/screenelement/util/IndexedNumberVariable;

    int-to-double v3, v1

    invoke-virtual {v2, v3, v4}, Lmiui/app/screenelement/util/IndexedNumberVariable;->set(D)V

    iget-object v2, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    const-string v3, "BatteryFull"

    invoke-virtual {v2, v3, v5}, Lmiui/app/screenelement/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    iget-object v2, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    const-string v3, "Charging"

    invoke-virtual {v2, v3, v5}, Lmiui/app/screenelement/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    iget-object v2, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    const-string v3, "BatteryLow"

    invoke-virtual {v2, v3, v5}, Lmiui/app/screenelement/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    iget-object v2, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    const-string v3, "Normal"

    invoke-virtual {v2, v3, v5}, Lmiui/app/screenelement/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    iget-object v2, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lmiui/app/screenelement/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->curCategory:Ljava/lang/String;

    goto :goto_b

    :cond_55
    const-string v0, "Charging"

    const/4 v1, 0x1

    iget v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRateCharging:F

    iput v2, p0, Lmiui/app/screenelement/ScreenElementRoot;->mFrameRate:F

    goto :goto_1e

    :cond_5d
    const-string v0, "BatteryLow"

    const/4 v1, 0x2

    iget v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRateBatteryLow:F

    iput v2, p0, Lmiui/app/screenelement/ScreenElementRoot;->mFrameRate:F

    goto :goto_1e

    :cond_65
    const-string v0, "Normal"

    const/4 v1, 0x0

    iget v2, p0, Lmiui/app/screenelement/ScreenElementRoot;->mNormalFrameRate:F

    iput v2, p0, Lmiui/app/screenelement/ScreenElementRoot;->mFrameRate:F

    goto :goto_1e
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;->unlocked(Landroid/content/Intent;)V

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    invoke-super {p0, p1}, Lmiui/app/screenelement/ScreenElementRoot;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_b
.end method

.method public pokeWakelock()V
    .registers 2

    .prologue
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    invoke-interface {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;->pokeWakelock()V

    return-void
.end method

.method protected shouldPlaySound()Z
    .registers 2

    .prologue
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    invoke-interface {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;->isSoundEnable()Z

    move-result v0

    return v0
.end method

.method public startUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V
    .registers 3
    .parameter "ele"

    .prologue
    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmiui/app/screenelement/ScreenElementRoot;->mElementGroup:Lmiui/app/screenelement/elements/ElementGroup;

    check-cast v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;

    invoke-virtual {v0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;->startUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    :cond_b
    return-void
.end method
