.class public Lcom/android/systemui/backup/BackupHelper;
.super Landroid/app/backup/BackupAgentHelper;
.source "BackupHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/backup/BackupHelper$Companion;,
        Lcom/android/systemui/backup/BackupHelper$NoOverwriteFileBackupHelper;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBackupHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BackupHelper.kt\ncom/android/systemui/backup/BackupHelper\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,137:1\n37#2,2:138\n*E\n*S KotlinDebug\n*F\n+ 1 BackupHelper.kt\ncom/android/systemui/backup/BackupHelper\n*L\n71#1,2:138\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/backup/BackupHelper$Companion;

.field private static final controlsDataLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/backup/BackupHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/backup/BackupHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/backup/BackupHelper;->Companion:Lcom/android/systemui/backup/BackupHelper$Companion;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/backup/BackupHelper;->controlsDataLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    return-void
.end method

.method public static final synthetic access$getControlsDataLock$cp()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/systemui/backup/BackupHelper;->controlsDataLock:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/UserHandle;I)V
    .locals 2

    const-string/jumbo p2, "userHandle"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/backup/BackupAgentHelper;->onCreate()V

    invoke-static {p0}, Lcom/android/systemui/backup/BackupHelperKt;->access$getPPControlsFile(Landroid/content/Context;)Lkotlin/jvm/functions/Function0;

    move-result-object p2

    const-string v0, "controls_favorites.xml"

    invoke-static {v0, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p2

    new-instance v0, Lcom/android/systemui/backup/BackupHelper$NoOverwriteFileBackupHelper;

    sget-object v1, Lcom/android/systemui/backup/BackupHelper;->Companion:Lcom/android/systemui/backup/BackupHelper$Companion;

    invoke-virtual {v1}, Lcom/android/systemui/backup/BackupHelper$Companion;->getControlsDataLock()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p0, p2}, Lcom/android/systemui/backup/BackupHelper$NoOverwriteFileBackupHelper;-><init>(Ljava/lang/Object;Landroid/content/Context;Ljava/util/Map;)V

    const-string/jumbo p2, "systemui.files_no_overwrite"

    invoke-virtual {p0, p2, v0}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    invoke-virtual {p1}, Landroid/os/UserHandle;->isSystem()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/systemui/people/widget/PeopleBackupHelper;->getFilesToBackup()Ljava/util/List;

    move-result-object p2

    new-instance v0, Lcom/android/systemui/people/widget/PeopleBackupHelper;

    const-string v1, "keys"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, [Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/people/widget/PeopleBackupHelper;-><init>(Landroid/content/Context;Landroid/os/UserHandle;[Ljava/lang/String;)V

    const-string/jumbo p1, "systemui.people.shared_preferences"

    invoke-virtual {p0, p1, v0}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    return-void
.end method

.method public onRestoreFinished()V
    .locals 3

    invoke-super {p0}, Landroid/app/backup/BackupAgentHelper;->onRestoreFinished()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.backup.RESTORE_FINISHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/backup/BackupAgentHelper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/backup/BackupAgentHelper;->getUserId()I

    move-result v1

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const-string v2, "com.android.systemui.permission.SELF"

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/backup/BackupAgentHelper;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method
