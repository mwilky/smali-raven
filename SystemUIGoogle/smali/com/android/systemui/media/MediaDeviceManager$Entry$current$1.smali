.class final Lcom/android/systemui/media/MediaDeviceManager$Entry$current$1;
.super Ljava/lang/Object;
.source "MediaDeviceManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaDeviceManager$Entry;->setCurrent(Lcom/android/systemui/media/MediaDeviceData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $value:Lcom/android/systemui/media/MediaDeviceData;

.field final synthetic this$0:Lcom/android/systemui/media/MediaDeviceManager;

.field final synthetic this$1:Lcom/android/systemui/media/MediaDeviceManager$Entry;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaDeviceManager;Lcom/android/systemui/media/MediaDeviceManager$Entry;Lcom/android/systemui/media/MediaDeviceData;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry$current$1;->this$0:Lcom/android/systemui/media/MediaDeviceManager;

    iput-object p2, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry$current$1;->this$1:Lcom/android/systemui/media/MediaDeviceManager$Entry;

    iput-object p3, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry$current$1;->$value:Lcom/android/systemui/media/MediaDeviceData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry$current$1;->this$0:Lcom/android/systemui/media/MediaDeviceManager;

    iget-object v1, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry$current$1;->this$1:Lcom/android/systemui/media/MediaDeviceManager$Entry;

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaDeviceManager$Entry;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry$current$1;->this$1:Lcom/android/systemui/media/MediaDeviceManager$Entry;

    invoke-virtual {v2}, Lcom/android/systemui/media/MediaDeviceManager$Entry;->getOldKey()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/media/MediaDeviceManager$Entry$current$1;->$value:Lcom/android/systemui/media/MediaDeviceData;

    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/media/MediaDeviceManager;->access$processDevice(Lcom/android/systemui/media/MediaDeviceManager;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaDeviceData;)V

    return-void
.end method
