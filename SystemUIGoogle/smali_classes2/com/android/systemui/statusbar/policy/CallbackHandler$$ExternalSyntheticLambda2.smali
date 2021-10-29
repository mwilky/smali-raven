.class public final synthetic Lcom/android/systemui/statusbar/policy/CallbackHandler$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/policy/NetworkController$WifiIndicators;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkController$WifiIndicators;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$$ExternalSyntheticLambda2;->f$1:Lcom/android/systemui/statusbar/policy/NetworkController$WifiIndicators;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$$ExternalSyntheticLambda2;->f$1:Lcom/android/systemui/statusbar/policy/NetworkController$WifiIndicators;

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->$r8$lambda$eo_aw2C3NKZ3xoTafvO2sST_bIs(Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkController$WifiIndicators;)V

    return-void
.end method
