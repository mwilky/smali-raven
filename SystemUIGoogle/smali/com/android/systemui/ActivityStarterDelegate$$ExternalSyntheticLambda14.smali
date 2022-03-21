.class public final synthetic Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda14;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda14;->f$0:Ljava/lang/Runnable;

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0, p1}, Lcom/android/systemui/ActivityStarterDelegate;->$r8$lambda$dQnTXuiPNlZ_F2scRD6ogzvgVyA(Ljava/lang/Runnable;Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method
