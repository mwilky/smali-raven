.class public final synthetic Lcom/android/server/BatteryService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/BatteryService;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/BatteryService;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/BatteryService;

    iput-boolean p2, p0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda3;->f$1:Z

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/BatteryService;

    iget-boolean p0, p0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda3;->f$1:Z

    invoke-static {v0, p0}, Lcom/android/server/BatteryService;->$r8$lambda$qoqQpaPDQ607g0nVB_kJpcEBPPY(Lcom/android/server/BatteryService;Z)V

    return-void
.end method
