.class public final synthetic Lcom/android/systemui/assist/DeviceConfigHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/assist/DeviceConfigHelper$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-wide p1, p0, Lcom/android/systemui/assist/DeviceConfigHelper$$ExternalSyntheticLambda0;->f$1:J

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/assist/DeviceConfigHelper$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-wide v1, p0, Lcom/android/systemui/assist/DeviceConfigHelper$$ExternalSyntheticLambda0;->f$1:J

    const-string/jumbo p0, "systemui"

    invoke-static {p0, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
