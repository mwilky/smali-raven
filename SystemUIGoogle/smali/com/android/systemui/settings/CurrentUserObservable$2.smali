.class public final Lcom/android/systemui/settings/CurrentUserObservable$2;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "CurrentUserObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/settings/CurrentUserObservable;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/settings/CurrentUserObservable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/CurrentUserObservable;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/CurrentUserObservable$2;->this$0:Lcom/android/systemui/settings/CurrentUserObservable;

    invoke-direct {p0, p2}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    return-void
.end method


# virtual methods
.method public final onUserSwitched(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/settings/CurrentUserObservable$2;->this$0:Lcom/android/systemui/settings/CurrentUserObservable;

    iget-object p0, p0, Lcom/android/systemui/settings/CurrentUserObservable;->mCurrentUser:Lcom/android/systemui/settings/CurrentUserObservable$1;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
