.class public final synthetic Lcom/android/systemui/recents/OverviewProxyService$3$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$3$$ExternalSyntheticLambda2;->f$0:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$3$$ExternalSyntheticLambda2;->f$0:Landroid/os/Bundle;

    check-cast p1, Lcom/android/wm/shell/recents/RecentTasks;

    invoke-static {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$3;->$r8$lambda$e6_XSg3m84Lwc4989V0A9MUakvI(Landroid/os/Bundle;Lcom/android/wm/shell/recents/RecentTasks;)V

    return-void
.end method
