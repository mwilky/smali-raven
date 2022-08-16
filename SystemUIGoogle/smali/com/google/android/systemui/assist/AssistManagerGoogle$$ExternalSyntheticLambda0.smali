.class public final synthetic Lcom/google/android/systemui/assist/AssistManagerGoogle$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/assist/AssistManagerGoogle;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/assist/AssistManagerGoogle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/assist/AssistManagerGoogle;

    return-void
.end method


# virtual methods
.method public final onNavigationModeChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/assist/AssistManagerGoogle;

    iput p1, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mNavigationMode:I

    return-void
.end method
