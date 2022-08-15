.class public final synthetic Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda50;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda50;->f$0:I

    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda50;->f$0:I

    check-cast p1, Landroid/view/accessibility/IAccessibilityManagerClient;

    invoke-static {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->$r8$lambda$YOqZRJvSlYYVx6ce6EhSygK32bI(ILandroid/view/accessibility/IAccessibilityManagerClient;)V

    return-void
.end method
