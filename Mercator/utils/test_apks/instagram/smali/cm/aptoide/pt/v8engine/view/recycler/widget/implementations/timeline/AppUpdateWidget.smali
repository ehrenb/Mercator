.class public Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;
.super Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;
.source "AppUpdateWidget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;",
        ">;"
    }
.end annotation


# static fields
.field private static final CARD_TYPE_NAME:Ljava/lang/String; = "APP_UPDATE"


# instance fields
.field private appIcon:Landroid/widget/ImageView;

.field private appName:Landroid/widget/TextView;

.field private appUpdate:Landroid/widget/TextView;

.field private appVersion:Landroid/widget/TextView;

.field private cardView:Landroid/support/v7/widget/CardView;

.field private displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;

.field private errorText:Landroid/widget/TextView;

.field private store:Landroid/view/View;

.field private storeImage:Landroid/widget/ImageView;

.field private storeName:Landroid/widget/TextView;

.field private updateButton:Landroid/widget/TextView;

.field private updateDate:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;-><init>(Landroid/view/View;)V

    .line 49
    return-void
.end method

.method static synthetic lambda$null$2(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;Landroid/support/v4/app/u;Ljava/lang/Void;)Lrx/d;
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->update(Landroid/content/Context;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method private showDownloadError(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;)Ljava/lang/Void;
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->getUpdateErrorText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->showDownloadError(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;Ljava/lang/String;)Ljava/lang/Void;

    .line 146
    const/4 v0, 0x0

    return-object v0
.end method

.method private showDownloadError(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;Ljava/lang/String;)Ljava/lang/Void;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 187
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->errorText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->errorText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->updateButton:Landroid/widget/TextView;

    sget v1, Lcm/aptoide/pt/v8engine/R$drawable;->timeline_update_app_dark:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 191
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->updateButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->getUpdateAppText(Landroid/content/Context;)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->updateButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 193
    const/4 v0, 0x0

    return-object v0
.end method

.method private updateInstallProgress(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;Lcm/aptoide/pt/v8engine/Progress;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;",
            "Lcm/aptoide/pt/v8engine/Progress",
            "<",
            "Lcm/aptoide/pt/database/realm/Download;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 151
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->errorText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    invoke-virtual {p2}, Lcm/aptoide/pt/v8engine/Progress;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 178
    :pswitch_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->updateButton:Landroid/widget/TextView;

    sget v1, Lcm/aptoide/pt/v8engine/R$drawable;->timeline_update_app_dark:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 180
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->updateButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->getUpdateAppText(Landroid/content/Context;)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->updateButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 184
    :goto_0
    return-void

    .line 155
    :pswitch_1
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->updateButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 156
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->updateButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->getCompletedText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->updateButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 160
    :pswitch_2
    invoke-virtual {p1, p2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->isInstalling(Lcm/aptoide/pt/v8engine/Progress;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->isDownloading(Lcm/aptoide/pt/v8engine/Progress;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->updateButton:Landroid/widget/TextView;

    sget v1, Lcm/aptoide/pt/v8engine/R$drawable;->timeline_update_app_dark:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 164
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->updateButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->getUpdateAppText(Landroid/content/Context;)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->updateButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 167
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->updateButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 168
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->updateButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->getUpdatingText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->updateButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 173
    :pswitch_3
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v1

    .line 174
    invoke-virtual {p2}, Lcm/aptoide/pt/v8engine/Progress;->getRequest()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/realm/Download;

    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Download;->getDownloadError()I

    move-result v0

    .line 173
    invoke-virtual {p1, v1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->getErrorMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->showDownloadError(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;Ljava/lang/String;)Ljava/lang/Void;

    goto :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected assignViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;->assignViews(Landroid/view/View;)V

    .line 53
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_app_update_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->appName:Landroid/widget/TextView;

    .line 54
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_app_update_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->appIcon:Landroid/widget/ImageView;

    .line 55
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_app_update_version:I

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->appVersion:Landroid/widget/TextView;

    .line 57
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_app_update_button:I

    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->updateButton:Landroid/widget/TextView;

    .line 59
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_app_update_error:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->errorText:Landroid/widget/TextView;

    .line 60
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_app_update:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->appUpdate:Landroid/widget/TextView;

    .line 61
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_app_update_card_image:I

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->storeImage:Landroid/widget/ImageView;

    .line 63
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_app_update_card_title:I

    .line 64
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->storeName:Landroid/widget/TextView;

    .line 65
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_app_update_card_card_subtitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->updateDate:Landroid/widget/TextView;

    .line 67
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_app_update_header:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->store:Landroid/view/View;

    .line 68
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_app_update_card:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->cardView:Landroid/support/v7/widget/CardView;

    .line 69
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;)V

    return-void
.end method

.method public bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 72
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/CardWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;)V

    .line 73
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;

    .line 74
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->appName:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->getAppTitle(Landroid/content/Context;)Landroid/text/Spannable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->appUpdate:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->getHasUpdateText(Landroid/content/Context;)Landroid/text/Spannable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->appVersion:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->getVersionText(Landroid/content/Context;)Landroid/text/Spannable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->cardView:Landroid/support/v7/widget/CardView;

    invoke-virtual {p0, p1, v1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->setCardViewMargin(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;Landroid/support/v7/widget/CardView;)V

    .line 79
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->updateButton:Landroid/widget/TextView;

    sget v2, Lcm/aptoide/pt/v8engine/R$drawable;->timeline_update_app_dark:I

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 81
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->updateButton:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->getUpdateAppText(Landroid/content/Context;)Landroid/text/Spannable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->updateButton:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 83
    invoke-static {v0}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v1

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->getAppIconUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcm/aptoide/pt/imageloader/ImageLoader;->load(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 84
    invoke-static {v0}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v1

    .line 85
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->getStoreIconUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->storeImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcm/aptoide/pt/imageloader/ImageLoader;->loadWithShadowCircleTransform(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 86
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->storeName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->getStoreName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->updateDate:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->getTimeSinceLastUpdate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->errorText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->compositeSubscription:Lrx/j/b;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->store:Landroid/view/View;

    invoke-static {v2}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v2

    invoke-static {p0, p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;Landroid/support/v4/app/u;)Lrx/b/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/j/b;->a(Lrx/k;)V

    .line 107
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->compositeSubscription:Lrx/j/b;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->appIcon:Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v2

    invoke-static {p0, p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;Landroid/support/v4/app/u;)Lrx/b/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/j/b;->a(Lrx/k;)V

    .line 119
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->compositeSubscription:Lrx/j/b;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->updateButton:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v2

    invoke-static {p0, p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;Landroid/support/v4/app/u;)Lrx/b/e;

    move-result-object v0

    invoke-virtual {v2, v0}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;)Lrx/b/e;

    move-result-object v2

    .line 131
    invoke-virtual {v0, v2}, Lrx/d;->j(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 135
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget$$Lambda$5;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;)Lrx/b/b;

    move-result-object v2

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget$$Lambda$6;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;)Lrx/b/b;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v0

    .line 119
    invoke-virtual {v1, v0}, Lrx/j/b;->a(Lrx/k;)V

    .line 138
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/CardDisplayable;)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;)V

    return-void
.end method

.method getCardTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    const-string v0, "APP_UPDATE"

    return-object v0
.end method

.method synthetic lambda$bindView$0(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;Landroid/support/v4/app/u;Ljava/lang/Void;)V
    .locals 5

    .prologue
    .line 91
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->getAbUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->knockWithSixpackCredentials(Ljava/lang/String;)V

    .line 92
    const-string v0, "APP_UPDATE"

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "(blank)"

    .line 93
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->getStoreName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Open Store"

    .line 92
    invoke-static {v0, v1, v2, v3, v4}, Lcm/aptoide/pt/v8engine/analytics/Analytics$AppsTimeline;->clickOnCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;->builder()Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;

    move-result-object v0

    const-string v1, "APP_UPDATE"

    .line 96
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;->cardType(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;

    move-result-object v0

    const-string v1, "APTOIDE"

    .line 97
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;->source(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;

    move-result-object v0

    .line 98
    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific;->builder()Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;

    move-result-object v1

    .line 99
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->getStoreName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;->store(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;

    move-result-object v1

    .line 100
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;->app(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;

    move-result-object v1

    .line 101
    invoke-virtual {v1}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;->build()Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific;

    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;->specific(Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific;)Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;->build()Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;

    move-result-object v0

    const-string v1, "OPEN_STORE"

    .line 95
    invoke-virtual {p1, v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->sendClickEvent(Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;Ljava/lang/String;)V

    .line 103
    check-cast p2, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;

    .line 104
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v0

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->getStoreName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newStoreFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 103
    invoke-interface {p2, v0}, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;->pushFragmentV4(Landroid/support/v4/app/Fragment;)V

    .line 105
    return-void
.end method

.method synthetic lambda$bindView$1(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;Landroid/support/v4/app/u;Ljava/lang/Void;)V
    .locals 4

    .prologue
    .line 108
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->getAbUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->knockWithSixpackCredentials(Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;->builder()Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;

    move-result-object v0

    const-string v1, "APP_UPDATE"

    .line 110
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;->cardType(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;

    move-result-object v0

    const-string v1, "APTOIDE"

    .line 111
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;->source(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;

    move-result-object v0

    .line 113
    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific;->builder()Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;->app(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;->build()Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific;

    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;->specific(Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific;)Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;->build()Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;

    move-result-object v0

    const-string v1, "OPEN_APP"

    .line 109
    invoke-virtual {p1, v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->sendClickEvent(Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;Ljava/lang/String;)V

    .line 115
    check-cast p2, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;

    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v0

    .line 116
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->getAppId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v3, v1}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newAppViewFragment(JLjava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 115
    invoke-interface {p2, v0}, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;->pushFragmentV4(Landroid/support/v4/app/Fragment;)V

    .line 117
    return-void
.end method

.method synthetic lambda$bindView$3(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;Landroid/support/v4/app/u;Ljava/lang/Void;)Lrx/d;
    .locals 5

    .prologue
    .line 120
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->getAbUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->knockWithSixpackCredentials(Ljava/lang/String;)V

    .line 121
    const-string v0, "APP_UPDATE"

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "(blank)"

    .line 122
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->getStoreName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Update Application"

    .line 121
    invoke-static {v0, v1, v2, v3, v4}, Lcm/aptoide/pt/v8engine/analytics/Analytics$AppsTimeline;->clickOnCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;->builder()Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;

    move-result-object v0

    const-string v1, "APP_UPDATE"

    .line 125
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;->cardType(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;

    move-result-object v0

    const-string v1, "APTOIDE"

    .line 126
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;->source(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;

    move-result-object v0

    .line 128
    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific;->builder()Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;->app(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific$SpecificBuilder;->build()Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific;

    move-result-object v1

    .line 127
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;->specific(Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Specific;)Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data$DataBuilder;->build()Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;

    move-result-object v0

    const-string v1, "UPDATE_APP"

    .line 124
    invoke-virtual {p1, v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->sendClickEvent(Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1, p2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->requestPermission(Landroid/content/Context;)Lrx/d;

    move-result-object v0

    invoke-static {p1, p2}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget$$Lambda$8;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;Landroid/support/v4/app/u;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$bindView$5(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;Lrx/d;)Lrx/d;
    .locals 2

    .prologue
    .line 131
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v0

    invoke-virtual {p2, v0}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget$$Lambda$7;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$bindView$6(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;Lcm/aptoide/pt/v8engine/Progress;)V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0, p1, p2}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->updateInstallProgress(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;Lcm/aptoide/pt/v8engine/Progress;)V

    .line 137
    return-void
.end method

.method synthetic lambda$bindView$7(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->showDownloadError(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;)Ljava/lang/Void;

    return-void
.end method

.method synthetic lambda$null$4(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;Ljava/lang/Throwable;)Lrx/d;
    .locals 3

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/timeline/AppUpdateWidget;->showDownloadError(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;)Ljava/lang/Void;

    .line 133
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " stack : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const/4 v0, 0x0

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
