.class public final Lcom/google/android/systemui/backup/BackupHelperGoogle;
.super Lcom/android/systemui/backup/BackupHelper;
.source "BackupHelperGoogle.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/backup/BackupHelperGoogle$Companion;,
        Lcom/google/android/systemui/backup/BackupHelperGoogle$SecureSettingsBackupHelper;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/android/systemui/backup/BackupHelperGoogle$Companion;

.field private static final SECURE_SETTINGS_INT_KEYS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SECURE_SETTINGS_STRING_KEYS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/systemui/backup/BackupHelperGoogle$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/systemui/backup/BackupHelperGoogle$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/systemui/backup/BackupHelperGoogle;->Companion:Lcom/google/android/systemui/backup/BackupHelperGoogle$Companion;

    const-string v0, "columbus_enabled"

    const-string v1, "columbus_low_sensitivity"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/systemui/backup/BackupHelperGoogle;->SECURE_SETTINGS_INT_KEYS:Ljava/util/List;

    const-string v0, "columbus_action"

    const-string v1, "columbus_launch_app"

    const-string v2, "columbus_launch_app_shortcut"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/systemui/backup/BackupHelperGoogle;->SECURE_SETTINGS_STRING_KEYS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/backup/BackupHelper;-><init>()V

    return-void
.end method

.method public static final synthetic access$getSECURE_SETTINGS_INT_KEYS$cp()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/google/android/systemui/backup/BackupHelperGoogle;->SECURE_SETTINGS_INT_KEYS:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getSECURE_SETTINGS_STRING_KEYS$cp()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/google/android/systemui/backup/BackupHelperGoogle;->SECURE_SETTINGS_STRING_KEYS:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/UserHandle;I)V
    .locals 2

    const-string v0, "userHandle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/android/systemui/backup/BackupHelper;->onCreate(Landroid/os/UserHandle;I)V

    new-instance p2, Lcom/google/android/systemui/backup/BackupHelperGoogle$SecureSettingsBackupHelper;

    invoke-virtual {p0}, Landroid/app/backup/BackupAgentHelper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "contentResolver"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, p1}, Lcom/google/android/systemui/backup/BackupHelperGoogle$SecureSettingsBackupHelper;-><init>(Landroid/content/ContentResolver;Landroid/os/UserHandle;)V

    const-string p1, "systemui.google.secure_settings_backup"

    invoke-virtual {p0, p1, p2}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    return-void
.end method
