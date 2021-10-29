.class public final Lcom/google/android/systemui/gamedashboard/GameModeDndController;
.super Ljava/lang/Object;
.source "GameModeDndController.java"


# static fields
.field private static final COMPONENT_NAME:Landroid/content/ComponentName;

.field private static final CONDITION_ID:Landroid/net/Uri;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFilterActive:Z

.field private mFilterActiveOld:Z

.field private mGameActive:Z

.field private mGameActiveOld:Z

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mRuleId:Ljava/lang/String;

.field private mRuleName:Ljava/lang/String;

.field private mUserActive:Z

.field private mUserActiveOld:Z

.field private final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "android-app"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "game-mode-dnd-controller"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->CONDITION_ID:Landroid/net/Uri;

    new-instance v0, Landroid/content/ComponentName;

    const-class v2, Lcom/google/android/systemui/gamedashboard/GameDndConfigActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->COMPONENT_NAME:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/NotificationManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->mNotificationManager:Landroid/app/NotificationManager;

    sget p2, Lcom/android/systemui/R$string;->game_mode_dnd_rule_name:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->mRuleName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->getOrCreateRuleId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->mRuleId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->getFilterActive()Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->mFilterActive:Z

    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->createReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance p1, Lcom/google/android/systemui/gamedashboard/GameModeDndController$1;

    invoke-direct {p1, p0, p3}, Lcom/google/android/systemui/gamedashboard/GameModeDndController$1;-><init>(Lcom/google/android/systemui/gamedashboard/GameModeDndController;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {p1}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->updateRule()V

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/systemui/gamedashboard/GameModeDndController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->mRuleId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/systemui/gamedashboard/GameModeDndController;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->getOrCreateRuleId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$202(Lcom/google/android/systemui/gamedashboard/GameModeDndController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->mUserActive:Z

    return p1
.end method

.method static synthetic access$302(Lcom/google/android/systemui/gamedashboard/GameModeDndController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->mRuleName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/systemui/gamedashboard/GameModeDndController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/systemui/gamedashboard/GameModeDndController;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->updateRule()V

    return-void
.end method

.method private createReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    new-instance v0, Lcom/google/android/systemui/gamedashboard/GameModeDndController$2;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/gamedashboard/GameModeDndController$2;-><init>(Lcom/google/android/systemui/gamedashboard/GameModeDndController;)V

    return-object v0
.end method

.method private fetchRule()Landroid/app/AutomaticZenRule;
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->mRuleId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fetched new rule id outside of user switch handler: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->mRuleId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameModeDndController"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->getOrCreateRuleId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->mRuleId:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;

    move-result-object p0

    return-object p0
.end method

.method private getFilterActive()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->fetchRule()Landroid/app/AutomaticZenRule;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/AutomaticZenRule;->getInterruptionFilter()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getOrCreateRuleId()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getAutomaticZenRules()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AutomaticZenRule;

    invoke-virtual {v2}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->CONDITION_ID:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    new-instance v8, Landroid/app/AutomaticZenRule;

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->mRuleName:Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->COMPONENT_NAME:Landroid/content/ComponentName;

    sget-object v4, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->CONDITION_ID:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/app/AutomaticZenRule;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/ZenPolicy;IZ)V

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v8}, Landroid/app/NotificationManager;->addAutomaticZenRule(Landroid/app/AutomaticZenRule;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "GameModeDndController"

    const-string v1, "Failed to create zen rule due to missing configuration Activity."

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method private isEffectiveStateModified()Z
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->mUserActiveOld:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->mGameActiveOld:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->mFilterActiveOld:Z

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->isGameModeDndOn()Z

    move-result p0

    if-eq v0, p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method private isFilterModified()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->mFilterActive:Z

    iget-boolean p0, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->mFilterActiveOld:Z

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateRule()V
    .locals 6

    const-string v0, "GameModeDndController"

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->fetchRule()Landroid/app/AutomaticZenRule;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->isFilterModified()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->mFilterActive:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/app/AutomaticZenRule;->setInterruptionFilter(I)V

    iget-object v2, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v4, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->mRuleId:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Landroid/app/NotificationManager;->updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updated filter: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->mFilterActive:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->mRuleName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->mRuleName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AutomaticZenRule;->setName(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v4, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->mRuleId:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Landroid/app/NotificationManager;->updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    :cond_3
    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->getConfigurationActivity()Landroid/content/ComponentName;

    move-result-object v2

    sget-object v4, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1, v4}, Landroid/app/AutomaticZenRule;->setConfigurationActivity(Landroid/content/ComponentName;)V

    iget-object v2, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v4, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->mRuleId:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Landroid/app/NotificationManager;->updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    :cond_4
    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->isEffectiveStateModified()Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Landroid/service/notification/Condition;

    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->isGameModeDndOn()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_1
    invoke-direct {v2, v1, v4, v3}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated condition: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Landroid/service/notification/Condition;->state:I

    invoke-static {v3}, Landroid/service/notification/Condition;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v3, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->mRuleId:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/app/NotificationManager;->setAutomaticZenRuleState(Ljava/lang/String;Landroid/service/notification/Condition;)V

    :cond_6
    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->updateState()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to update Game Mode DND rule: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->mRuleId:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method private updateState()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->mGameActive:Z

    iput-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->mGameActiveOld:Z

    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->mUserActive:Z

    iput-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->mUserActiveOld:Z

    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->mFilterActive:Z

    iput-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->mFilterActiveOld:Z

    return-void
.end method


# virtual methods
.method public isGameModeDndOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->mGameActive:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->mFilterActive:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->mUserActive:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public refreshRule()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->getFilterActive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->mFilterActive:Z

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->updateState()V

    return-void
.end method

.method public setGameModeDndOn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->mFilterActive:Z

    iput-boolean p1, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->mGameActive:Z

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->updateRule()V

    return-void
.end method

.method public setGameModeDndRuleActive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->mGameActive:Z

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->updateRule()V

    return-void
.end method
