.class public final Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$init$2;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "KeyguardMediaViewController.kt"


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$init$2;->this$0:Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;

    invoke-direct {p0, p2}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    return-void
.end method


# virtual methods
.method public final onUserSwitched(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$init$2;->this$0:Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->title:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->artist:Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->smartspaceView:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;->setMediaTarget(Landroid/app/smartspace/SmartspaceTarget;)V

    :goto_0
    return-void
.end method
