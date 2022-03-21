.class final Lcom/google/android/systemui/assist/uihints/NavBarFader$onTimeout$1;
.super Ljava/lang/Object;
.source "NavBarFader.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/assist/uihints/NavBarFader;-><init>(Lcom/android/systemui/navigationbar/NavigationBarController;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/assist/uihints/NavBarFader;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/assist/uihints/NavBarFader;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/NavBarFader$onTimeout$1;->this$0:Lcom/google/android/systemui/assist/uihints/NavBarFader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/NavBarFader$onTimeout$1;->this$0:Lcom/google/android/systemui/assist/uihints/NavBarFader;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/assist/uihints/NavBarFader;->onVisibleRequest(Z)V

    return-void
.end method
