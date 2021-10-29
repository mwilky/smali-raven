.class Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility$2;
.super Ljava/lang/Object;
.source "NavigationBarVisibility.java"

# interfaces
.implements Lcom/google/android/systemui/elmyra/gates/Gate$Listener;


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

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility$2;->this$0:Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGateChanged(Lcom/google/android/systemui/elmyra/gates/Gate;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility$2;->this$0:Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;

    invoke-static {v0}, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->access$200(Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;)Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility$2;->this$0:Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;

    invoke-static {p0}, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->access$300(Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility$2;->this$0:Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;

    invoke-static {v0}, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->access$400(Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;)Lcom/google/android/systemui/elmyra/gates/NonGesturalNavigation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility$2;->this$0:Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;

    invoke-static {p0}, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->access$500(Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;)V

    :cond_1
    :goto_0
    return-void
.end method
