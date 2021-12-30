.class public Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;
.super Lcom/android/settings/deviceinfo/StorageWizardBase;
.source "StorageWizardMigrateProgress.java"


# instance fields
.field private final mCallback:Landroid/content/pm/PackageManager$MoveCallback;

.field private mMoveId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;-><init>()V

    new-instance v0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;-><init>(Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->mCallback:Landroid/content/pm/PackageManager$MoveCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->mMoveId:I

    return p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mVolume:Landroid/os/storage/VolumeInfo;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const p1, 0x7f060222

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, -0x1

    const-string v1, "android.content.pm.extra.MOVE_ID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->mMoveId:I

    const p1, 0x7f02037d

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setIcon(I)V

    const p1, 0x7f041332

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setHeaderText(I[Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setAuxChecklist()V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setBackButtonVisibility(I)V

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setNextButtonVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->mCallback:Landroid/content/pm/PackageManager$MoveCallback;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->registerMoveCallback(Landroid/content/pm/PackageManager$MoveCallback;Landroid/os/Handler;)V

    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->mCallback:Landroid/content/pm/PackageManager$MoveCallback;

    iget v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->mMoveId:I

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget p0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->mMoveId:I

    invoke-virtual {v1, p0}, Landroid/content/pm/PackageManager;->getMoveStatus(I)I

    move-result p0

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, p0, v1, v2}, Landroid/content/pm/PackageManager$MoveCallback;->onStatusChanged(IIJ)V

    return-void
.end method
