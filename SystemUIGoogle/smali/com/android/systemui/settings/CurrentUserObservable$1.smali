.class public final Lcom/android/systemui/settings/CurrentUserObservable$1;
.super Landroidx/lifecycle/MutableLiveData;
.source "CurrentUserObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/CurrentUserObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/MutableLiveData<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/settings/CurrentUserObservable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/CurrentUserObservable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/CurrentUserObservable$1;->this$0:Lcom/android/systemui/settings/CurrentUserObservable;

    invoke-direct {p0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActive()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/settings/CurrentUserObservable$1;->this$0:Lcom/android/systemui/settings/CurrentUserObservable;

    iget-object p0, p0, Lcom/android/systemui/settings/CurrentUserObservable;->mTracker:Lcom/android/systemui/settings/CurrentUserObservable$2;

    invoke-virtual {p0}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    return-void
.end method

.method public final onInactive()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/settings/CurrentUserObservable$1;->this$0:Lcom/android/systemui/settings/CurrentUserObservable;

    iget-object p0, p0, Lcom/android/systemui/settings/CurrentUserObservable;->mTracker:Lcom/android/systemui/settings/CurrentUserObservable$2;

    invoke-virtual {p0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    return-void
.end method
