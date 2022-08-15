.class public Lcom/android/server/biometrics/sensors/face/hidl/Face10$5;
.super Ljava/lang/Object;
.source "Face10.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$scheduleGetFeature$13(IILandroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

.field public final synthetic val$client:Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;

.field public final synthetic val$feature:I

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;ILcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$5;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    iput p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$5;->val$feature:I

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$5;->val$client:Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;

    iput p4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$5;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 1

    if-eqz p2, :cond_0

    iget p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$5;->val$feature:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$5;->val$client:Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->getValue()Z

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Updating attention value for user: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$5;->val$userId:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " to value: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Face10"

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$5;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$5;->val$userId:I

    const-string v0, "face_unlock_attention_required"

    invoke-static {p2, v0, p1, p0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    return-void
.end method
