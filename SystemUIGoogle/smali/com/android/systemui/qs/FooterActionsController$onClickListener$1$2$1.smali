.class final Lcom/android/systemui/qs/FooterActionsController$onClickListener$1$2$1;
.super Ljava/lang/Object;
.source "FooterActionsController.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/FooterActionsController$onClickListener$1$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/FooterActionsController;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/FooterActionsController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/FooterActionsController$onClickListener$1$2$1;->this$0:Lcom/android/systemui/qs/FooterActionsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/FooterActionsController$onClickListener$1$2$1;->this$0:Lcom/android/systemui/qs/FooterActionsController;

    invoke-static {p0}, Lcom/android/systemui/qs/FooterActionsController;->access$startSettingsActivity(Lcom/android/systemui/qs/FooterActionsController;)V

    return-void
.end method
