.class public final synthetic Lcom/android/keyguard/KeyguardSecurityContainer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/view/MotionEvent;


# direct methods
.method public synthetic constructor <init>(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$$ExternalSyntheticLambda0;->f$0:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$$ExternalSyntheticLambda0;->f$0:Landroid/view/MotionEvent;

    check-cast p1, Lcom/android/systemui/Gefingerpoken;

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->$r8$lambda$F6CZdwTTzyX0eUVHA_bg6y_Eeo0(Landroid/view/MotionEvent;Lcom/android/systemui/Gefingerpoken;)Z

    move-result p0

    return p0
.end method
