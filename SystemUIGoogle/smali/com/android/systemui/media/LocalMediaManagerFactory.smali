.class public final Lcom/android/systemui/media/LocalMediaManagerFactory;
.super Ljava/lang/Object;
.source "LocalMediaManagerFactory.kt"


# instance fields
.field private final context:Landroid/content/Context;

.field private final localBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/LocalMediaManagerFactory;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/media/LocalMediaManagerFactory;->localBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/String;)Lcom/android/settingslib/media/LocalMediaManager;
    .locals 4

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/settingslib/media/InfoMediaManager;

    iget-object v1, p0, Lcom/android/systemui/media/LocalMediaManagerFactory;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/media/LocalMediaManagerFactory;->localBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v3, v2}, Lcom/android/settingslib/media/InfoMediaManager;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    new-instance v1, Lcom/android/settingslib/media/LocalMediaManager;

    iget-object v2, p0, Lcom/android/systemui/media/LocalMediaManagerFactory;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/media/LocalMediaManagerFactory;->localBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-direct {v1, v2, p0, v0, p1}, Lcom/android/settingslib/media/LocalMediaManager;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/settingslib/media/InfoMediaManager;Ljava/lang/String;)V

    return-object v1
.end method
