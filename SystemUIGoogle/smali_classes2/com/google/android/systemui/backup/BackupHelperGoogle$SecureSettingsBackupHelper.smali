.class final Lcom/google/android/systemui/backup/BackupHelperGoogle$SecureSettingsBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "BackupHelperGoogle.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/backup/BackupHelperGoogle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SecureSettingsBackupHelper"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBackupHelperGoogle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BackupHelperGoogle.kt\ncom/google/android/systemui/backup/BackupHelperGoogle$SecureSettingsBackupHelper\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,140:1\n37#2,2:141\n37#2,2:143\n*E\n*S KotlinDebug\n*F\n+ 1 BackupHelperGoogle.kt\ncom/google/android/systemui/backup/BackupHelperGoogle$SecureSettingsBackupHelper\n*L\n43#1,2:141\n44#1,2:143\n*E\n"
.end annotation


# instance fields
.field private final contentResolver:Landroid/content/ContentResolver;

.field private final userHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/os/UserHandle;)V
    .locals 4

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userHandle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/jvm/internal/SpreadBuilder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    invoke-static {}, Lcom/google/android/systemui/backup/BackupHelperGoogle;->access$getSECURE_SETTINGS_INT_KEYS$cp()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/android/systemui/backup/BackupHelperGoogle;->access$getSECURE_SETTINGS_STRING_KEYS$cp()Ljava/util/List;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkotlin/jvm/internal/SpreadBuilder;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/SpreadBuilder;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/systemui/backup/BackupHelperGoogle$SecureSettingsBackupHelper;->contentResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/google/android/systemui/backup/BackupHelperGoogle$SecureSettingsBackupHelper;->userHandle:Landroid/os/UserHandle;

    return-void
.end method

.method private final applySecureSettingsIntPayload(Ljava/lang/String;[B)V
    .locals 3

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_3

    array-length v0, p2

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    iget-object v0, p0, Lcom/google/android/systemui/backup/BackupHelperGoogle$SecureSettingsBackupHelper;->contentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/google/android/systemui/backup/BackupHelperGoogle$SecureSettingsBackupHelper;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-static {v0, p1, p2, p0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    :try_start_1
    const-string p0, "BackupHelper"

    const-string p2, "Failed to restore "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    return-void

    :goto_2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    throw p0

    :cond_3
    :goto_3
    return-void
.end method

.method private final applySecureSettingsStringPayload(Ljava/lang/String;[B)V
    .locals 3

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_3

    array-length v0, p2

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p2

    const-string v1, "input.readUTF()"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    iget-object v0, p0, Lcom/google/android/systemui/backup/BackupHelperGoogle$SecureSettingsBackupHelper;->contentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/google/android/systemui/backup/BackupHelperGoogle$SecureSettingsBackupHelper;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-static {v0, p1, p2, p0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    :try_start_1
    const-string p0, "BackupHelper"

    const-string p2, "Failed to restore "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    return-void

    :goto_2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    throw p0

    :cond_3
    :goto_3
    return-void
.end method

.method private final getSecureSettingsIntPayload(Ljava/lang/String;)[B
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/systemui/backup/BackupHelperGoogle$SecureSettingsBackupHelper;->contentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/google/android/systemui/backup/BackupHelperGoogle$SecureSettingsBackupHelper;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-static {v1, p1, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_1
    invoke-virtual {v2, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    const-string p0, "BackupHelper"

    const-string v1, "Failed to backup "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    return-object v0

    :goto_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    throw p0

    :catch_1
    return-object v0
.end method

.method private final getSecureSettingsStringPayload(Ljava/lang/String;)[B
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/backup/BackupHelperGoogle$SecureSettingsBackupHelper;->contentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/google/android/systemui/backup/BackupHelperGoogle$SecureSettingsBackupHelper;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-static {v0, p1, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-virtual {v2, p0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    :try_start_1
    const-string p0, "BackupHelper"

    const-string v1, "Failed to backup "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-object v0

    :goto_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    throw p0
.end method


# virtual methods
.method protected applyRestoredPayload(Ljava/lang/String;[B)V
    .locals 1

    invoke-static {}, Lcom/google/android/systemui/backup/BackupHelperGoogle;->access$getSECURE_SETTINGS_INT_KEYS$cp()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/backup/BackupHelperGoogle$SecureSettingsBackupHelper;->applySecureSettingsIntPayload(Ljava/lang/String;[B)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/systemui/backup/BackupHelperGoogle;->access$getSECURE_SETTINGS_STRING_KEYS$cp()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/backup/BackupHelperGoogle$SecureSettingsBackupHelper;->applySecureSettingsStringPayload(Ljava/lang/String;[B)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected getBackupPayload(Ljava/lang/String;)[B
    .locals 1

    invoke-static {}, Lcom/google/android/systemui/backup/BackupHelperGoogle;->access$getSECURE_SETTINGS_INT_KEYS$cp()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/backup/BackupHelperGoogle$SecureSettingsBackupHelper;->getSecureSettingsIntPayload(Ljava/lang/String;)[B

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/systemui/backup/BackupHelperGoogle;->access$getSECURE_SETTINGS_STRING_KEYS$cp()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/systemui/backup/BackupHelperGoogle$SecureSettingsBackupHelper;->getSecureSettingsStringPayload(Ljava/lang/String;)[B

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
