.class public final synthetic Lcom/android/systemui/tuner/LockscreenFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/tuner/LockscreenFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/tuner/LockscreenFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/tuner/LockscreenFragment$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/tuner/LockscreenFragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/tuner/LockscreenFragment$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/tuner/LockscreenFragment;

    check-cast p1, Lcom/android/systemui/tuner/TunerService$Tunable;

    invoke-static {p0, p1}, Lcom/android/systemui/tuner/LockscreenFragment;->$r8$lambda$oCmZzn-Pp4OZxF1DjF8SpqbDL58(Lcom/android/systemui/tuner/LockscreenFragment;Lcom/android/systemui/tuner/TunerService$Tunable;)V

    return-void
.end method
