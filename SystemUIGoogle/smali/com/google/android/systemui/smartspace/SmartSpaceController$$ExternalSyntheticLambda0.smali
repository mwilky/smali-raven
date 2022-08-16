.class public final synthetic Lcom/google/android/systemui/smartspace/SmartSpaceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/smartspace/SmartSpaceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    return-void
.end method


# virtual methods
.method public final onAlarm()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->onExpire(Z)V

    return-void
.end method
