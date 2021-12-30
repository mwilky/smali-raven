.class public Lcom/android/settings/notification/app/ConversationPriorityPreference;
.super Landroidx/preference/Preference;
.source "ConversationPriorityPreference.java"


# instance fields
.field private mAlertButton:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mImportance:I

.field private mIsConfigurable:Z

.field private mOriginalImportance:I

.field private mPriorityButton:Landroid/view/View;

.field private mPriorityConversation:Z

.field private mSilenceButton:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$G5hdtfxBd7eIySvGUkpxJ0E2OvI(Lcom/android/settings/notification/app/ConversationPriorityPreference;Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->lambda$onBindViewHolder$2(Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wdi2fP-7G2bQly_qIEQCx5lHwyA(Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->lambda$setSelected$3(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$dUjmhbq-NInoH81YtUqr0USw65s(Lcom/android/settings/notification/app/ConversationPriorityPreference;Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->lambda$onBindViewHolder$0(Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gpknmwVrJ3d5veYoDUW6E-V7wsY(Lcom/android/settings/notification/app/ConversationPriorityPreference;Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->lambda$onBindViewHolder$1(Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mIsConfigurable:Z

    invoke-direct {p0, p1}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mIsConfigurable:Z

    invoke-direct {p0, p1}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mIsConfigurable:Z

    invoke-direct {p0, p1}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mIsConfigurable:Z

    invoke-direct {p0, p1}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method private getAccentTint()Landroid/content/res/ColorStateList;
    .locals 0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccent(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method private getRegularTint()Landroid/content/res/ColorStateList;
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x1010036

    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mContext:Landroid/content/Context;

    const p1, 0x7f060162

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V
    .locals 3

    new-instance p2, Landroid/util/Pair;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p2, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->updateToggles(Landroid/view/ViewGroup;IZZ)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V
    .locals 3

    iget p2, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mOriginalImportance:I

    const/4 v0, 0x3

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    new-instance v0, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->updateToggles(Landroid/view/ViewGroup;IZZ)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$2(Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V
    .locals 3

    iget p2, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mOriginalImportance:I

    const/4 v0, 0x3

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    new-instance v0, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->updateToggles(Landroid/view/ViewGroup;IZZ)V

    return-void
.end method

.method private static synthetic lambda$setSelected$3(Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    const v0, 0x7f0d04f5

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mSilenceButton:Landroid/view/View;

    const v0, 0x7f0d0073

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mAlertButton:Landroid/view/View;

    const v0, 0x7f0d044d

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mPriorityButton:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mIsConfigurable:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mSilenceButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mAlertButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mPriorityButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget v2, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mImportance:I

    iget-boolean v3, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mPriorityConversation:Z

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->updateToggles(Landroid/view/ViewGroup;IZZ)V

    iget-object v0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mSilenceButton:Landroid/view/View;

    new-instance v1, Lcom/android/settings/notification/app/ConversationPriorityPreference$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/notification/app/ConversationPriorityPreference$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/notification/app/ConversationPriorityPreference;Landroidx/preference/PreferenceViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mAlertButton:Landroid/view/View;

    new-instance v1, Lcom/android/settings/notification/app/ConversationPriorityPreference$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/notification/app/ConversationPriorityPreference$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/notification/app/ConversationPriorityPreference;Landroidx/preference/PreferenceViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mPriorityButton:Landroid/view/View;

    new-instance v1, Lcom/android/settings/notification/app/ConversationPriorityPreference$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/notification/app/ConversationPriorityPreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/app/ConversationPriorityPreference;Landroidx/preference/PreferenceViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setConfigurable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mIsConfigurable:Z

    return-void
.end method

.method public setImportance(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mImportance:I

    return-void
.end method

.method public setOriginalImportance(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mOriginalImportance:I

    return-void
.end method

.method public setPriorityConversation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mPriorityConversation:Z

    return-void
.end method

.method setSelected(Landroid/view/View;Z)V
    .locals 6

    invoke-direct {p0}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->getAccentTint()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->getRegularTint()Landroid/content/res/ColorStateList;

    move-result-object v1

    const v2, 0x7f0d02aa

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0d0308

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0d057b

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, v1

    :goto_0
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    const/16 v0, 0x8

    :goto_2
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_3

    const v0, 0x7f02010d

    goto :goto_3

    :cond_3
    const v0, 0x7f02010e

    :goto_3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance p0, Lcom/android/settings/notification/app/ConversationPriorityPreference$$ExternalSyntheticLambda3;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/app/ConversationPriorityPreference$$ExternalSyntheticLambda3;-><init>(Landroid/view/View;Z)V

    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method updateToggles(Landroid/view/ViewGroup;IZZ)V
    .locals 2

    if-eqz p4, :cond_0

    new-instance p4, Landroid/transition/AutoTransition;

    invoke-direct {p4}, Landroid/transition/AutoTransition;-><init>()V

    const-wide/16 v0, 0x64

    invoke-virtual {p4, v0, v1}, Landroid/transition/AutoTransition;->setDuration(J)Landroid/transition/TransitionSet;

    invoke-static {p1, p4}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    :cond_0
    const/4 p1, 0x2

    const/4 p4, 0x1

    const/4 v0, 0x0

    if-gt p2, p1, :cond_1

    const/16 p1, -0x3e8

    if-le p2, p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mPriorityButton:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->setSelected(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mAlertButton:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->setSelected(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mSilenceButton:Landroid/view/View;

    invoke-virtual {p0, p1, p4}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->setSelected(Landroid/view/View;Z)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    iget-object p1, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mPriorityButton:Landroid/view/View;

    invoke-virtual {p0, p1, p4}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->setSelected(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mAlertButton:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->setSelected(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mSilenceButton:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->setSelected(Landroid/view/View;Z)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mPriorityButton:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->setSelected(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mAlertButton:Landroid/view/View;

    invoke-virtual {p0, p1, p4}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->setSelected(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference;->mSilenceButton:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->setSelected(Landroid/view/View;Z)V

    :goto_0
    return-void
.end method
