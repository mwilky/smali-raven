.class public Lcom/google/android/systemui/smartspace/CardPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "CardPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mCurrentTextColor:I

.field private mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

.field private mDndDescription:Ljava/lang/String;

.field private mDndImage:Landroid/graphics/drawable/Drawable;

.field private mDozeAmount:F

.field private mDozeColor:I

.field private mHasOnlyDefaultDateCard:Z

.field private final mHolders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mHolidayAlarmsTarget:Landroid/app/smartspace/SmartspaceTarget;

.field private final mMediaTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/smartspace/SmartspaceTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mNextAlarmDescription:Ljava/lang/String;

.field private mNextAlarmImage:Landroid/graphics/drawable/Drawable;

.field private mPrimaryTextColor:I

.field private final mRoot:Landroid/view/View;

.field private mSmartspaceTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/smartspace/SmartspaceTarget;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetsExcludingMediaAndHolidayAlarms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/smartspace/SmartspaceTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$S-RMUIR888hx7Olx-M4EEkQ_BFA(Lcom/google/android/systemui/smartspace/CardPagerAdapter;Landroid/os/Parcelable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->lambda$setTargets$0(Landroid/os/Parcelable;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mSmartspaceTargets:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mTargetsExcludingMediaAndHolidayAlarms:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mMediaTargets:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mHasOnlyDefaultDateCard:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mHolders:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mDozeAmount:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mDozeColor:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mDndDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mDndImage:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mNextAlarmDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mNextAlarmImage:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mHolidayAlarmsTarget:Landroid/app/smartspace/SmartspaceTarget;

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mRoot:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x1010036

    invoke-static {p1, v0}, Lcom/android/launcher3/icons/GraphicsUtils;->getAttrColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mPrimaryTextColor:I

    iput p1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mCurrentTextColor:I

    return-void
.end method

.method private createBaseCard(Landroid/view/ViewGroup;I)Lcom/google/android/systemui/smartspace/BcSmartspaceCard;
    .locals 5

    const/16 p0, 0x1e

    const/16 v0, 0x14

    const/4 v1, -0x2

    if-eq p2, v1, :cond_3

    const/4 v2, 0x1

    if-eq p2, v2, :cond_2

    if-eq p2, v0, :cond_1

    if-eq p2, p0, :cond_0

    sget v2, Lcom/android/systemui/bcsmartspace/R$layout;->smartspace_card:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/android/systemui/bcsmartspace/R$layout;->smartspace_base_card_doorbell:I

    goto :goto_0

    :cond_1
    sget v2, Lcom/android/systemui/bcsmartspace/R$layout;->smartspace_base_card_package_delivery:I

    goto :goto_0

    :cond_2
    sget v2, Lcom/android/systemui/bcsmartspace/R$layout;->smartspace_card_date:I

    goto :goto_0

    :cond_3
    sget v2, Lcom/android/systemui/bcsmartspace/R$layout;->smartspace_card_at_store:I

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    if-eq p2, v1, :cond_c

    const/4 v1, -0x1

    if-eq p2, v1, :cond_b

    const/4 v1, 0x3

    if-eq p2, v1, :cond_a

    const/4 v1, 0x4

    if-eq p2, v1, :cond_9

    const/16 v1, 0x9

    if-eq p2, v1, :cond_8

    const/16 v1, 0xa

    if-eq p2, v1, :cond_7

    const/16 v1, 0xd

    if-eq p2, v1, :cond_6

    const/16 v1, 0xe

    if-eq p2, v1, :cond_5

    const/16 v1, 0x12

    if-eq p2, v1, :cond_a

    if-eq p2, v0, :cond_4

    if-eq p2, p0, :cond_4

    move p0, v4

    goto :goto_1

    :cond_4
    sget p0, Lcom/android/systemui/bcsmartspace/R$layout;->smartspace_card_doorbell:I

    goto :goto_1

    :cond_5
    sget p0, Lcom/android/systemui/bcsmartspace/R$layout;->smartspace_card_loyalty:I

    goto :goto_1

    :cond_6
    sget p0, Lcom/android/systemui/bcsmartspace/R$layout;->smartspace_card_shopping_list:I

    goto :goto_1

    :cond_7
    sget p0, Lcom/android/systemui/bcsmartspace/R$layout;->smartspace_card_weather_forecast:I

    goto :goto_1

    :cond_8
    sget p0, Lcom/android/systemui/bcsmartspace/R$layout;->smartspace_card_sports:I

    goto :goto_1

    :cond_9
    sget p0, Lcom/android/systemui/bcsmartspace/R$layout;->smartspace_card_flight:I

    goto :goto_1

    :cond_a
    sget p0, Lcom/android/systemui/bcsmartspace/R$layout;->smartspace_card_generic_landscape_image:I

    goto :goto_1

    :cond_b
    sget p0, Lcom/android/systemui/bcsmartspace/R$layout;->smartspace_card_combination:I

    goto :goto_1

    :cond_c
    sget p0, Lcom/android/systemui/bcsmartspace/R$layout;->smartspace_card_combination_at_store:I

    :goto_1
    if-eqz p0, :cond_d

    invoke-virtual {v3, p0, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;

    invoke-virtual {p1, p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->setSecondaryCard(Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;)V

    :cond_d
    return-object p1
.end method

.method private getFeatureType(Landroid/app/smartspace/SmartspaceTarget;)I
    .locals 2

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getActionChips()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    move-result p1

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xd

    const/4 v1, -0x1

    if-eq p1, v0, :cond_1

    return v1

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_2

    const/4 v1, -0x2

    :cond_2
    return v1

    :cond_3
    :goto_0
    return p1
.end method

.method private isHolidayAlarmsTarget(Landroid/app/smartspace/SmartspaceTarget;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    move-result p0

    const/16 p1, 0x22

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$setTargets$0(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Landroid/app/smartspace/SmartspaceTarget;

    invoke-direct {p0, p1}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->isHolidayAlarmsTarget(Landroid/app/smartspace/SmartspaceTarget;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mHolidayAlarmsTarget:Landroid/app/smartspace/SmartspaceTarget;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mTargetsExcludingMediaAndHolidayAlarms:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private onBindViewHolder(Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mSmartspaceTargets:Ljava/util/List;

    iget v1, p1, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;->position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/SmartspaceTarget;

    iget-object v1, p1, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;->card:Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    invoke-static {v0}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggerUtil;->createSubcardLoggingInfo(Landroid/app/smartspace/SmartspaceTarget;)Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

    move-result-object v2

    new-instance v3, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;

    invoke-direct {v3}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;-><init>()V

    invoke-static {v0}, Lcom/google/android/systemui/smartspace/InstanceId;->create(Landroid/app/smartspace/SmartspaceTarget;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->setInstanceId(I)Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->setFeatureType(I)Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mRoot:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mDozeAmount:F

    invoke-static {v4, v5}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getLoggingDisplaySurface(Ljava/lang/String;F)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->setDisplaySurface(I)Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;

    move-result-object v3

    iget p1, p1, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;->position:I

    invoke-virtual {v3, p1}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->setRank(I)Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;

    move-result-object p1

    iget-object v3, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mSmartspaceTargets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->setCardinality(I)Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->setSubcardInfo(Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;)Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo$Builder;->build()Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/google/android/systemui/smartspace/CardPagerAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/google/android/systemui/smartspace/CardPagerAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;)V

    move-object v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->setEventNotifier(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;)V

    const/16 v2, 0x27

    invoke-static {p1, v0, v2}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggerUtil;->forcePrimaryFeatureTypeAndInjectWeatherSubcard(Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;Landroid/app/smartspace/SmartspaceTarget;I)V

    iget-object v2, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mSmartspaceTargets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1, v0, p1, v3}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->setSmartspaceTarget(Landroid/app/smartspace/SmartspaceTarget;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;Z)V

    iget p1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mCurrentTextColor:I

    invoke-virtual {v1, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->setPrimaryTextColor(I)V

    iget p1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mDozeAmount:F

    invoke-virtual {v1, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->setDozeAmount(F)V

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mDndImage:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mDndDescription:Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->setDnd(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mNextAlarmImage:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mNextAlarmDescription:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mHolidayAlarmsTarget:Landroid/app/smartspace/SmartspaceTarget;

    invoke-virtual {v1, p1, v0, p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->setNextAlarm(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/app/smartspace/SmartspaceTarget;)V

    return-void
.end method

.method private refreshCardColors()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mHolders:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mHolders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;

    iget-object v1, v1, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;->card:Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    iget v2, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mCurrentTextColor:I

    invoke-virtual {v1, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->setPrimaryTextColor(I)V

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mHolders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;

    iget-object v1, v1, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;->card:Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    iget v2, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mDozeAmount:F

    invoke-virtual {v1, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->setDozeAmount(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private refreshCards()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mHolders:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mHolders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;

    invoke-direct {p0, v1}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->onBindViewHolder(Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateTargetVisibility()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mMediaTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mTargetsExcludingMediaAndHolidayAlarms:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mSmartspaceTargets:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mDozeAmount:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mHasOnlyDefaultDateCard:Z

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mMediaTargets:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mSmartspaceTargets:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mTargetsExcludingMediaAndHolidayAlarms:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mSmartspaceTargets:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    check-cast p3, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;

    iget-object v0, p3, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;->card:Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mHolders:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p3, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mHolders:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    return-void
.end method

.method getCardAtPosition(I)Lcom/google/android/systemui/smartspace/BcSmartspaceCard;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mHolders:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;->card:Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    :goto_0
    return-object p0
.end method

.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mSmartspaceTargets:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method getDozeAmount()F
    .locals 0

    iget p0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mDozeAmount:F

    return p0
.end method

.method getHolidayAlarmsTarget()Landroid/app/smartspace/SmartspaceTarget;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mHolidayAlarmsTarget:Landroid/app/smartspace/SmartspaceTarget;

    return-object p0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;

    iget v0, p1, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;->position:I

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->getTargetAtPosition(I)Landroid/app/smartspace/SmartspaceTarget;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;->target:Landroid/app/smartspace/SmartspaceTarget;

    const/4 v2, -0x1

    if-ne v1, v0, :cond_0

    return v2

    :cond_0
    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->getFeatureType(Landroid/app/smartspace/SmartspaceTarget;)I

    move-result v1

    iget-object v3, p1, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;->target:Landroid/app/smartspace/SmartspaceTarget;

    invoke-direct {p0, v3}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->getFeatureType(Landroid/app/smartspace/SmartspaceTarget;)I

    move-result v3

    if-ne v1, v3, :cond_1

    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceTarget;->getSmartspaceTargetId()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;->target:Landroid/app/smartspace/SmartspaceTarget;

    invoke-virtual {v3}, Landroid/app/smartspace/SmartspaceTarget;->getSmartspaceTargetId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p1, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;->target:Landroid/app/smartspace/SmartspaceTarget;

    invoke-direct {p0, p1}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->onBindViewHolder(Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;)V

    return v2

    :cond_1
    const/4 p0, -0x2

    return p0
.end method

.method getNextAlarmImage()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mNextAlarmImage:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method getTargetAtPosition(I)Landroid/app/smartspace/SmartspaceTarget;
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mSmartspaceTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mSmartspaceTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mSmartspaceTargets:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/smartspace/SmartspaceTarget;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method getTargets()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/smartspace/SmartspaceTarget;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mSmartspaceTargets:Ljava/util/List;

    return-object p0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mSmartspaceTargets:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/SmartspaceTarget;

    invoke-direct {p0, v0}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->getFeatureType(Landroid/app/smartspace/SmartspaceTarget;)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->createBaseCard(Landroid/view/ViewGroup;I)Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    move-result-object v1

    new-instance v2, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;

    invoke-direct {v2, p2, v1, v0}, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;-><init>(ILcom/google/android/systemui/smartspace/BcSmartspaceCard;Landroid/app/smartspace/SmartspaceTarget;)V

    invoke-direct {p0, v2}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->onBindViewHolder(Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mHolders:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v2
.end method

.method public bridge synthetic instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    check-cast p2, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;

    iget-object p0, p2, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;->card:Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method setDataProvider(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    return-void
.end method

.method setDnd(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mDndImage:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mDndDescription:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->refreshCards()V

    return-void
.end method

.method setDozeAmount(F)V
    .locals 2

    iget v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mPrimaryTextColor:I

    iget v1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mDozeColor:I

    invoke-static {v0, v1, p1}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mCurrentTextColor:I

    iput p1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mDozeAmount:F

    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->updateTargetVisibility()V

    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->refreshCardColors()V

    return-void
.end method

.method setMediaTarget(Landroid/app/smartspace/SmartspaceTarget;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mMediaTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mMediaTargets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->updateTargetVisibility()V

    return-void
.end method

.method setNextAlarm(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mNextAlarmImage:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mNextAlarmDescription:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->refreshCards()V

    return-void
.end method

.method setPrimaryTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mPrimaryTextColor:I

    iget p1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mDozeAmount:F

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->setDozeAmount(F)V

    return-void
.end method

.method setTargets(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mTargetsExcludingMediaAndHolidayAlarms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mHolidayAlarmsTarget:Landroid/app/smartspace/SmartspaceTarget;

    new-instance v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/smartspace/CardPagerAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/smartspace/CardPagerAdapter;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mTargetsExcludingMediaAndHolidayAlarms:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mRoot:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    invoke-direct {p1, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mRoot:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mTargetsExcludingMediaAndHolidayAlarms:Ljava/util/List;

    new-instance v3, Landroid/app/smartspace/SmartspaceTarget$Builder;

    const-string v4, "date_card_794317_92634"

    invoke-direct {v3, v4, p1, v1}, Landroid/app/smartspace/SmartspaceTarget$Builder;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {v3, v0}, Landroid/app/smartspace/SmartspaceTarget$Builder;->setFeatureType(I)Landroid/app/smartspace/SmartspaceTarget$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget$Builder;->build()Landroid/app/smartspace/SmartspaceTarget;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mTargetsExcludingMediaAndHolidayAlarms:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mTargetsExcludingMediaAndHolidayAlarms:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/smartspace/SmartspaceTarget;

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    move-result p1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->mHasOnlyDefaultDateCard:Z

    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->updateTargetVisibility()V

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method
