.class public final synthetic Lcom/android/keyguard/clock/ClockManager$AvailableClocks$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/clock/ClockManager$AvailableClocks;

.field public final synthetic f$1:Lcom/android/systemui/plugins/ClockPlugin;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/clock/ClockManager$AvailableClocks;Lcom/android/systemui/plugins/ClockPlugin;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/clock/ClockManager$AvailableClocks;

    iput-object p2, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/plugins/ClockPlugin;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/clock/ClockManager$AvailableClocks;

    iget-object p0, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/plugins/ClockPlugin;

    invoke-static {v0, p0}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->$r8$lambda$hLHTYHEn_sJRR4dSOCFM0ZDNShg(Lcom/android/keyguard/clock/ClockManager$AvailableClocks;Lcom/android/systemui/plugins/ClockPlugin;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
