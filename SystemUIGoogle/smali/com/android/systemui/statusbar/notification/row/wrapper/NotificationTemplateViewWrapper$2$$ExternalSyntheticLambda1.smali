.class public final synthetic Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/PendingIntent;

.field public final synthetic f$1:Landroid/app/PendingIntent$CancelListener;


# direct methods
.method public synthetic constructor <init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent$CancelListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$2$$ExternalSyntheticLambda1;->f$0:Landroid/app/PendingIntent;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$2$$ExternalSyntheticLambda1;->f$1:Landroid/app/PendingIntent$CancelListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$2$$ExternalSyntheticLambda1;->f$0:Landroid/app/PendingIntent;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$2$$ExternalSyntheticLambda1;->f$1:Landroid/app/PendingIntent$CancelListener;

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$2;->$r8$lambda$m_Le_jtH3o5gc1fpuiwB0r9VfOc(Landroid/app/PendingIntent;Landroid/app/PendingIntent$CancelListener;)V

    return-void
.end method
