.class Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility$1;
.super Ljava/lang/Object;
.source "NavigationBarVisibility.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility$1;->this$0:Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setWindowState(III)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility$1;->this$0:Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;

    invoke-static {v0}, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->access$000(Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;)I

    move-result v0

    if-ne v0, p1, :cond_1

    const/4 p1, 0x2

    if-ne p2, p1, :cond_1

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility$1;->this$0:Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;

    invoke-static {p2}, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->access$100(Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;)Z

    move-result p2

    if-eq p1, p2, :cond_1

    iget-object p2, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility$1;->this$0:Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;

    invoke-static {p2, p1}, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->access$102(Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;Z)Z

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility$1;->this$0:Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->notifyListener()V

    :cond_1
    return-void
.end method
