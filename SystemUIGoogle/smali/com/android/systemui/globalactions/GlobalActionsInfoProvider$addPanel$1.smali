.class final Lcom/android/systemui/globalactions/GlobalActionsInfoProvider$addPanel$1;
.super Ljava/lang/Object;
.source "GlobalActionsInfoProvider.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/globalactions/GlobalActionsInfoProvider;->addPanel(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $dismissParent:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsInfoProvider;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Lcom/android/systemui/globalactions/GlobalActionsInfoProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsInfoProvider$addPanel$1;->$dismissParent:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsInfoProvider$addPanel$1;->this$0:Lcom/android/systemui/globalactions/GlobalActionsInfoProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsInfoProvider$addPanel$1;->$dismissParent:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsInfoProvider$addPanel$1;->this$0:Lcom/android/systemui/globalactions/GlobalActionsInfoProvider;

    invoke-static {p1}, Lcom/android/systemui/globalactions/GlobalActionsInfoProvider;->access$getActivityStarter$p(Lcom/android/systemui/globalactions/GlobalActionsInfoProvider;)Lcom/android/systemui/plugins/ActivityStarter;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsInfoProvider$addPanel$1;->this$0:Lcom/android/systemui/globalactions/GlobalActionsInfoProvider;

    invoke-static {p0}, Lcom/android/systemui/globalactions/GlobalActionsInfoProvider;->access$getPendingIntent$p(Lcom/android/systemui/globalactions/GlobalActionsInfoProvider;)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V

    return-void
.end method
