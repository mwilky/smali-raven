.class public Lcom/android/settings/development/tare/DropdownActivity;
.super Landroid/app/Activity;
.source "DropdownActivity.java"


# instance fields
.field private mAlarmManagerFragment:Landroid/app/Fragment;

.field private mJobSchedulerFragment:Landroid/app/Fragment;

.field private mSpinner:Landroid/widget/Spinner;


# direct methods
.method static bridge synthetic -$$Nest$mselectFragment(Lcom/android/settings/development/tare/DropdownActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/development/tare/DropdownActivity;->selectFragment(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private openFragment(Landroid/app/Fragment;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    const v0, 0x7f0d0271

    invoke-virtual {p0, v0, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private selectFragment(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/settings/development/tare/DropdownActivity;->mAlarmManagerFragment:Landroid/app/Fragment;

    invoke-direct {p0, p1}, Lcom/android/settings/development/tare/DropdownActivity;->openFragment(Landroid/app/Fragment;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/development/tare/DropdownActivity;->mJobSchedulerFragment:Landroid/app/Fragment;

    invoke-direct {p0, p1}, Lcom/android/settings/development/tare/DropdownActivity;->openFragment(Landroid/app/Fragment;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/settings/development/tare/DropdownActivity;->mAlarmManagerFragment:Landroid/app/Fragment;

    invoke-direct {p0, p1}, Lcom/android/settings/development/tare/DropdownActivity;->openFragment(Landroid/app/Fragment;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f060285

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "policy"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const v0, 0x7f0d056a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/development/tare/DropdownActivity;->mSpinner:Landroid/widget/Spinner;

    new-instance v0, Lcom/android/settings/development/tare/AlarmManagerFragment;

    invoke-direct {v0}, Lcom/android/settings/development/tare/AlarmManagerFragment;-><init>()V

    iput-object v0, p0, Lcom/android/settings/development/tare/DropdownActivity;->mAlarmManagerFragment:Landroid/app/Fragment;

    new-instance v0, Lcom/android/settings/development/tare/JobSchedulerFragment;

    invoke-direct {v0}, Lcom/android/settings/development/tare/JobSchedulerFragment;-><init>()V

    iput-object v0, p0, Lcom/android/settings/development/tare/DropdownActivity;->mJobSchedulerFragment:Landroid/app/Fragment;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0100d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/settingslib/widget/SettingsSpinnerAdapter;

    invoke-direct {v1, p0}, Lcom/android/settingslib/widget/SettingsSpinnerAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->addAll([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/settings/development/tare/DropdownActivity;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/android/settings/development/tare/DropdownActivity;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    invoke-direct {p0, p1}, Lcom/android/settings/development/tare/DropdownActivity;->selectFragment(I)V

    iget-object p1, p0, Lcom/android/settings/development/tare/DropdownActivity;->mSpinner:Landroid/widget/Spinner;

    new-instance v0, Lcom/android/settings/development/tare/DropdownActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/development/tare/DropdownActivity$1;-><init>(Lcom/android/settings/development/tare/DropdownActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method
