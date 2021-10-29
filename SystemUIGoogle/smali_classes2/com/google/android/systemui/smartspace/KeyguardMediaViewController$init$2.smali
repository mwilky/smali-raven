.class public final Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$init$2;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "KeyguardMediaViewController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$init$2;->this$0:Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;

    invoke-direct {p0, p2}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    return-void
.end method


# virtual methods
.method public onUserSwitched(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$init$2;->this$0:Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;

    invoke-static {p0}, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->access$reset(Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;)V

    return-void
.end method
