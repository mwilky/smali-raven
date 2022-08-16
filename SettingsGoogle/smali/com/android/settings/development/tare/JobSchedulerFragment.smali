.class public Lcom/android/settings/development/tare/JobSchedulerFragment;
.super Landroid/app/Fragment;
.source "JobSchedulerFragment.java"

# interfaces
.implements Lcom/android/settings/development/tare/TareFactorController$DataChangeListener;


# instance fields
.field private mChildren:[[Ljava/lang/String;

.field private mExpandableListAdapter:Lcom/android/settings/development/tare/TareFactorExpandableListAdapter;

.field private mFactorController:Lcom/android/settings/development/tare/TareFactorController;

.field private mGroups:[Ljava/lang/String;

.field private mKeys:[[Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmExpandableListAdapter(Lcom/android/settings/development/tare/JobSchedulerFragment;)Lcom/android/settings/development/tare/TareFactorExpandableListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/development/tare/JobSchedulerFragment;->mExpandableListAdapter:Lcom/android/settings/development/tare/TareFactorExpandableListAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFactorController(Lcom/android/settings/development/tare/JobSchedulerFragment;)Lcom/android/settings/development/tare/TareFactorController;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/development/tare/JobSchedulerFragment;->mFactorController:Lcom/android/settings/development/tare/TareFactorController;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private populateArrays()V
    .locals 23

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x7

    new-array v3, v2, [Ljava/lang/String;

    const v4, 0x7f041494

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f041493

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const v4, 0x7f041490

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const v4, 0x7f04148f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x3

    aput-object v4, v3, v8

    const v4, 0x7f0414b4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x4

    aput-object v4, v3, v9

    const v4, 0x7f0414b6

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x5

    aput-object v4, v3, v10

    const v4, 0x7f0414b5

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x6

    aput-object v4, v3, v11

    iput-object v3, v0, Lcom/android/settings/development/tare/JobSchedulerFragment;->mGroups:[Ljava/lang/String;

    new-array v3, v2, [[Ljava/lang/String;

    const v4, 0x7f0100ce

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0100cd

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const v4, 0x7f0100cf

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    aput-object v12, v3, v7

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    const v4, 0x7f0100d2

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    aput-object v12, v3, v9

    new-array v12, v6, [Ljava/lang/String;

    const v13, 0x7f0414ba

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v5

    aput-object v12, v3, v10

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v11

    iput-object v3, v0, Lcom/android/settings/development/tare/JobSchedulerFragment;->mChildren:[[Ljava/lang/String;

    new-array v1, v2, [[Ljava/lang/String;

    const-string v2, "js_initial_consumption_limit"

    const-string v3, "js_hard_consumption_limit"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "js_max_satiated_balance"

    const-string v3, "js_min_satiated_balance_exempted"

    const-string v4, "js_min_satiated_balance_headless_system_app"

    const-string v5, "js_min_satiated_balance_other_app"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v12, "js_action_job_max_start_ctp"

    const-string v13, "js_action_job_max_running_ctp"

    const-string v14, "js_action_job_high_start_ctp"

    const-string v15, "js_action_job_high_running_ctp"

    const-string v16, "js_action_job_default_start_ctp"

    const-string v17, "js_action_job_default_running_ctp"

    const-string v18, "js_action_job_low_start_ctp"

    const-string v19, "js_action_job_low_running_ctp"

    const-string v20, "js_action_job_min_start_ctp"

    const-string v21, "js_action_job_min_running_ctp"

    const-string v22, "js_action_job_timeout_penalty_ctp"

    filled-new-array/range {v12 .. v22}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v12, "js_action_job_max_start_base_price"

    const-string v13, "js_action_job_max_running_base_price"

    const-string v14, "js_action_job_high_start_base_price"

    const-string v15, "js_action_job_high_running_base_price"

    const-string v16, "js_action_job_default_start_base_price"

    const-string v17, "js_action_job_default_running_base_price"

    const-string v18, "js_action_job_low_start_base_price"

    const-string v19, "js_action_job_low_running_base_price"

    const-string v20, "js_action_job_min_start_base_price"

    const-string v21, "js_action_job_min_running_base_price"

    const-string v22, "js_action_job_timeout_penalty_base_price"

    filled-new-array/range {v12 .. v22}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "js_reward_top_activity_instant"

    const-string v3, "js_reward_notification_seen_instant"

    const-string v4, "js_reward_notification_interaction_instant"

    const-string v5, "js_reward_widget_interaction_instant"

    const-string v6, "js_reward_other_user_interaction_instant"

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v2, "js_reward_top_activity_ongoing"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    const-string v2, "js_reward_top_activity_max"

    const-string v3, "js_reward_notification_seen_max"

    const-string v4, "js_reward_notification_interaction_max"

    const-string v5, "js_reward_widget_interaction_max"

    const-string v6, "js_reward_other_user_interaction_max"

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v11

    iput-object v1, v0, Lcom/android/settings/development/tare/JobSchedulerFragment;->mKeys:[[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/development/tare/TareFactorController;->getInstance(Landroid/content/Context;)Lcom/android/settings/development/tare/TareFactorController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/tare/JobSchedulerFragment;->mFactorController:Lcom/android/settings/development/tare/TareFactorController;

    invoke-direct {p0}, Lcom/android/settings/development/tare/JobSchedulerFragment;->populateArrays()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const p2, 0x7f060287

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0d0241

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ExpandableListView;

    new-instance v6, Lcom/android/settings/development/tare/TareFactorExpandableListAdapter;

    iget-object v1, p0, Lcom/android/settings/development/tare/JobSchedulerFragment;->mFactorController:Lcom/android/settings/development/tare/TareFactorController;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/development/tare/JobSchedulerFragment;->mGroups:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/development/tare/JobSchedulerFragment;->mChildren:[[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/development/tare/JobSchedulerFragment;->mKeys:[[Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/development/tare/TareFactorExpandableListAdapter;-><init>(Lcom/android/settings/development/tare/TareFactorController;Landroid/view/LayoutInflater;[Ljava/lang/String;[[Ljava/lang/String;[[Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/settings/development/tare/JobSchedulerFragment;->mExpandableListAdapter:Lcom/android/settings/development/tare/TareFactorExpandableListAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    iget-object p3, p0, Lcom/android/settings/development/tare/JobSchedulerFragment;->mExpandableListAdapter:Lcom/android/settings/development/tare/TareFactorExpandableListAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    new-instance p3, Lcom/android/settings/development/tare/JobSchedulerFragment$1;

    invoke-direct {p3, p0}, Lcom/android/settings/development/tare/JobSchedulerFragment$1;-><init>(Lcom/android/settings/development/tare/JobSchedulerFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    return-object p1
.end method

.method public onDataChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/development/tare/JobSchedulerFragment;->mExpandableListAdapter:Lcom/android/settings/development/tare/TareFactorExpandableListAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    iget-object v0, p0, Lcom/android/settings/development/tare/JobSchedulerFragment;->mFactorController:Lcom/android/settings/development/tare/TareFactorController;

    invoke-virtual {v0, p0}, Lcom/android/settings/development/tare/TareFactorController;->registerListener(Lcom/android/settings/development/tare/TareFactorController$DataChangeListener;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/development/tare/JobSchedulerFragment;->mFactorController:Lcom/android/settings/development/tare/TareFactorController;

    invoke-virtual {v0, p0}, Lcom/android/settings/development/tare/TareFactorController;->unregisterListener(Lcom/android/settings/development/tare/TareFactorController$DataChangeListener;)V

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    return-void
.end method
