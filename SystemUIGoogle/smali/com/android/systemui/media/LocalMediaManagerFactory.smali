.class public final Lcom/android/systemui/media/LocalMediaManagerFactory;
.super Ljava/lang/Object;
.source "LocalMediaManagerFactory.kt"


# instance fields
.field public final context:Landroid/content/Context;

.field public final localBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/LocalMediaManagerFactory;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/media/LocalMediaManagerFactory;->localBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    return-void
.end method
