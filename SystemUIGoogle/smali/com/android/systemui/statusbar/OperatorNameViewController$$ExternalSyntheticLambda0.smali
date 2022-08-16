.class public final synthetic Lcom/android/systemui/statusbar/OperatorNameViewController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/OperatorNameViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/OperatorNameViewController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/OperatorNameViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/OperatorNameViewController;

    return-void
.end method


# virtual methods
.method public final onDarkChanged(Ljava/util/ArrayList;FI)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/OperatorNameViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/OperatorNameViewController;

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    move-object p2, p0

    check-cast p2, Lcom/android/systemui/statusbar/OperatorNameView;

    invoke-static {p1, p0, p3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Ljava/util/ArrayList;Landroid/view/View;I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
