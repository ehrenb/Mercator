.class public Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;
.super Ljava/lang/Object;
.source "SharePreviewDialog.java"


# instance fields
.field private displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

.field private privacyResult:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public constructor <init>(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    .line 56
    return-void
.end method

.method private handlePrivacyCheckBoxChanges(Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/CheckBox;Landroid/widget/LinearLayout;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 474
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 475
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 476
    invoke-static {p0, p2, p1}, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;Landroid/widget/ImageView;Landroid/widget/TextView;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 487
    invoke-virtual {p4, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 488
    return-void
.end method

.method static synthetic lambda$getCustomRecommendationPreviewDialogBuilder$2(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 545
    invoke-virtual {p0}, Landroid/widget/CheckBox;->toggle()V

    return-void
.end method

.method static synthetic lambda$getPreviewDialogBuilder$0(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 355
    invoke-virtual {p0}, Landroid/widget/CheckBox;->toggle()V

    return-void
.end method

.method static synthetic lambda$null$3(Lcm/aptoide/pt/v8engine/repository/SocialRepository;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;Lrx/j;Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 561
    invoke-virtual {p3}, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->getPrivacyResult()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcm/aptoide/pt/v8engine/repository/SocialRepository;->share(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 562
    sget-object v0, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->YES:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    invoke-virtual {p4, v0}, Lrx/j;->onNext(Ljava/lang/Object;)V

    .line 563
    invoke-virtual {p4}, Lrx/j;->onCompleted()V

    .line 564
    return-void
.end method

.method static synthetic lambda$null$4(Lrx/j;Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 565
    sget-object v0, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->NO:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    invoke-virtual {p0, v0}, Lrx/j;->onNext(Ljava/lang/Object;)V

    .line 566
    invoke-virtual {p0}, Lrx/j;->onCompleted()V

    .line 567
    return-void
.end method

.method static synthetic lambda$null$5(Lcm/aptoide/pt/v8engine/repository/SocialRepository;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;Lrx/j;Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 570
    invoke-virtual {p3}, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->getPrivacyResult()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcm/aptoide/pt/v8engine/repository/SocialRepository;->share(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 571
    sget-object v0, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->YES:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    invoke-virtual {p4, v0}, Lrx/j;->onNext(Ljava/lang/Object;)V

    .line 572
    invoke-virtual {p4}, Lrx/j;->onCompleted()V

    .line 573
    return-void
.end method

.method static synthetic lambda$null$6(Lrx/j;Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 574
    sget-object v0, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->NO:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    invoke-virtual {p0, v0}, Lrx/j;->onNext(Ljava/lang/Object;)V

    .line 575
    invoke-virtual {p0}, Lrx/j;->onCompleted()V

    .line 576
    return-void
.end method

.method static synthetic lambda$null$7(Lrx/j;Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 577
    sget-object v0, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->CANCEL:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    invoke-virtual {p0, v0}, Lrx/j;->onNext(Ljava/lang/Object;)V

    .line 578
    invoke-virtual {p0}, Lrx/j;->onCompleted()V

    .line 579
    const/4 v0, 0x0

    invoke-static {v0}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->setShowPreview(Z)V

    .line 580
    return-void
.end method

.method static synthetic lambda$showShareCardPreviewDialog$8(Landroid/support/v7/a/d$a;Lcm/aptoide/pt/v8engine/repository/SocialRepository;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;Lrx/j;)V
    .locals 3

    .prologue
    const/high16 v2, 0x1040000

    .line 559
    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->getUserAccessConfirmed()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 560
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->share:I

    invoke-static {p1, p2, p3, p4, p5}, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$6;->lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/SocialRepository;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;Lrx/j;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/a/d$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;

    move-result-object v0

    invoke-static {p5}, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$7;->lambdaFactory$(Lrx/j;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    .line 564
    invoke-virtual {v0, v2, v1}, Landroid/support/v7/a/d$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;

    .line 583
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/a/d$a;->c()Landroid/support/v7/a/d;

    .line 584
    return-void

    .line 569
    :cond_0
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->continue_option:I

    invoke-static {p1, p2, p3, p4, p5}, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$8;->lambdaFactory$(Lcm/aptoide/pt/v8engine/repository/SocialRepository;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;Lrx/j;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/a/d$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;

    move-result-object v0

    invoke-static {p5}, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$9;->lambdaFactory$(Lrx/j;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    .line 573
    invoke-virtual {v0, v2, v1}, Landroid/support/v7/a/d$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->dont_show_again:I

    invoke-static {p5}, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$10;->lambdaFactory$(Lrx/j;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    .line 576
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/a/d$a;->c(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;

    goto :goto_0
.end method

.method static synthetic lambda$showShareCardPreviewDialog$9(Landroid/content/Context;Lcm/aptoide/pt/utils/GenericDialogs$EResponse;)V
    .locals 2

    .prologue
    .line 585
    sget-object v0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$1;->$SwitchMap$cm$aptoide$pt$utils$GenericDialogs$EResponse:[I

    invoke-virtual {p1}, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 594
    :goto_0
    :pswitch_0
    return-void

    .line 587
    :pswitch_1
    check-cast p0, Landroid/app/Activity;

    sget v0, Lcm/aptoide/pt/v8engine/R$string;->social_timeline_share_dialog_title:I

    invoke-static {p0, v0}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/app/Activity;I)V

    goto :goto_0

    .line 585
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setCardHeader(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 367
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getUserData()Lcm/aptoide/accountmanager/util/UserCompleteData;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getUserRepo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 368
    sget-object v0, Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;->PUBLIC:Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;

    invoke-virtual {v0}, Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;->toString()Ljava/lang/String;

    move-result-object v0

    .line 369
    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->getUserAccess()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    invoke-virtual {p4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 371
    invoke-virtual {p5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 372
    invoke-static {p1}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v0

    .line 373
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getUserData()Lcm/aptoide/accountmanager/util/UserCompleteData;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getUserAvatarRepo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Lcm/aptoide/pt/imageloader/ImageLoader;->loadWithShadowCircleTransform(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 375
    invoke-static {p1}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v0

    .line 376
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getUserData()Lcm/aptoide/accountmanager/util/UserCompleteData;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getUserAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p5}, Lcm/aptoide/pt/imageloader/ImageLoader;->loadWithShadowCircleTransform(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 378
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getUserData()Lcm/aptoide/accountmanager/util/UserCompleteData;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getUserRepo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getUserData()Lcm/aptoide/accountmanager/util/UserCompleteData;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    invoke-virtual {p4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 382
    invoke-virtual {p5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 383
    invoke-static {p1}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v0

    .line 384
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getUserData()Lcm/aptoide/accountmanager/util/UserCompleteData;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getUserAvatarRepo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Lcm/aptoide/pt/imageloader/ImageLoader;->loadWithShadowCircleTransform(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 386
    invoke-static {p1}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v0

    .line 387
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getUserData()Lcm/aptoide/accountmanager/util/UserCompleteData;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getUserAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p5}, Lcm/aptoide/pt/imageloader/ImageLoader;->loadWithShadowCircleTransform(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 389
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getUserData()Lcm/aptoide/accountmanager/util/UserCompleteData;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getUserRepo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getUserData()Lcm/aptoide/accountmanager/util/UserCompleteData;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 394
    :cond_2
    sget-object v0, Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;->PUBLIC:Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;

    invoke-virtual {v0}, Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;->toString()Ljava/lang/String;

    move-result-object v0

    .line 395
    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->getUserAccess()Ljava/lang/String;

    move-result-object v1

    .line 394
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {p4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 397
    invoke-static {p1}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v0

    .line 398
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getUserData()Lcm/aptoide/accountmanager/util/UserCompleteData;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getUserAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Lcm/aptoide/pt/imageloader/ImageLoader;->loadWithShadowCircleTransform(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 400
    invoke-virtual {p5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 401
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getUserData()Lcm/aptoide/accountmanager/util/UserCompleteData;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setSharedByText(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 408
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 410
    sget-object v0, Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;->PUBLIC:Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;

    invoke-virtual {v0}, Lcm/aptoide/accountmanager/BaseActivity$UserAccessState;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->getUserAccess()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->social_timeline_shared_by:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 412
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getUserData()Lcm/aptoide/accountmanager/util/UserCompleteData;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getUserName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 411
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    :goto_0
    return-void

    .line 414
    :cond_0
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->social_timeline_shared_by:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 415
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getUserData()Lcm/aptoide/accountmanager/util/UserCompleteData;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getUserRepo()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 414
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setSocialCardHeader(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 421
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 422
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 423
    invoke-virtual {p4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 424
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/Store;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/Store;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/Store;->getAvatar()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 428
    invoke-static {p1}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v1

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;

    .line 430
    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/Store;->getAvatar()Ljava/lang/String;

    move-result-object v0

    .line 429
    invoke-virtual {v1, v0, p4}, Lcm/aptoide/pt/imageloader/ImageLoader;->loadWithShadowCircleTransform(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 433
    :cond_1
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->getUser()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 434
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 435
    invoke-virtual {p5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 436
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->getUser()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Comment$User;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 437
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->getUser()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Comment$User;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    :cond_2
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->getUser()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Comment$User;->getAvatar()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 441
    invoke-static {p1}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v1

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;

    .line 443
    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->getUser()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Comment$User;->getAvatar()Ljava/lang/String;

    move-result-object v0

    .line 442
    invoke-virtual {v1, v0, p5}, Lcm/aptoide/pt/imageloader/ImageLoader;->loadWithShadowCircleTransform(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 470
    :cond_3
    :goto_0
    return-void

    .line 446
    :cond_4
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 447
    invoke-virtual {p5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 450
    :cond_5
    const/4 v0, 0x4

    invoke-virtual {p5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 451
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 453
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->getUser()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 454
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 455
    invoke-virtual {p4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 456
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->getUser()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Comment$User;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 457
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->getUser()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Comment$User;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    :cond_6
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->getUser()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Comment$User;->getAvatar()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 461
    invoke-static {p1}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v1

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;

    .line 463
    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;->getUser()Lcm/aptoide/pt/model/v7/Comment$User;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/Comment$User;->getAvatar()Ljava/lang/String;

    move-result-object v0

    .line 462
    invoke-virtual {v1, v0, p4}, Lcm/aptoide/pt/imageloader/ImageLoader;->loadWithShadowCircleTransform(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    goto :goto_0

    .line 466
    :cond_7
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 467
    invoke-virtual {p4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getCustomRecommendationPreviewDialogBuilder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v7/a/d$a;
    .locals 15

    .prologue
    .line 492
    new-instance v12, Landroid/support/v7/a/d$a;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/support/v7/a/d$a;-><init>(Landroid/content/Context;)V

    .line 493
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 494
    sget v2, Lcm/aptoide/pt/v8engine/R$layout;->displayable_social_timeline_social_recommendation_preview:I

    const/4 v3, 0x0

    .line 495
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 496
    sget v1, Lcm/aptoide/pt/v8engine/R$id;->card:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/CardView;

    .line 497
    sget v2, Lcm/aptoide/pt/v8engine/R$id;->social_like:I

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 498
    sget v3, Lcm/aptoide/pt/v8engine/R$id;->social_like_button:I

    invoke-virtual {v13, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;

    .line 499
    sget v3, Lcm/aptoide/pt/v8engine/R$id;->social_comment:I

    invoke-virtual {v13, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Landroid/widget/TextView;

    .line 501
    sget v3, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_recommendation_icon:I

    .line 502
    invoke-virtual {v13, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 503
    sget v4, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_recommendation_similar_apps:I

    .line 504
    invoke-virtual {v13, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 505
    sget v5, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_recommendation_name:I

    .line 506
    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 507
    sget v6, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_recommendation_get_app_button:I

    invoke-virtual {v13, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 509
    invoke-static/range {p1 .. p1}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v9

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v3}, Lcm/aptoide/pt/imageloader/ImageLoader;->load(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 510
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    sget v3, Lcm/aptoide/pt/v8engine/R$string;->displayable_social_timeline_recommendation_atptoide_team_recommends:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, ""

    aput-object v10, v4, v9

    invoke-static {v3, v4}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getFormattedString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    new-instance v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;

    invoke-direct {v3}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;-><init>()V

    .line 516
    sget v4, Lcm/aptoide/pt/v8engine/R$string;->displayable_social_timeline_article_get_app_button:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, ""

    aput-object v10, v5, v9

    .line 517
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcm/aptoide/pt/v8engine/R$color;->appstimeline_grey:I

    .line 518
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/support/v4/content/b;->c(Landroid/content/Context;I)I

    move-result v5

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, ""

    aput-object v11, v9, v10

    .line 516
    invoke-virtual {v3, v4, v5, v9}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;->createColorSpan(Ljava/lang/String;I[Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    sget v3, Lcm/aptoide/pt/v8engine/R$id;->card_title:I

    invoke-virtual {v13, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 521
    sget v4, Lcm/aptoide/pt/v8engine/R$id;->card_subtitle:I

    invoke-virtual {v13, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 522
    sget v5, Lcm/aptoide/pt/v8engine/R$id;->card_image:I

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 523
    sget v6, Lcm/aptoide/pt/v8engine/R$id;->card_user_avatar:I

    invoke-virtual {v13, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 524
    sget v9, Lcm/aptoide/pt/v8engine/R$id;->social_preview_checkbox:I

    invoke-virtual {v13, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    .line 525
    sget v10, Lcm/aptoide/pt/v8engine/R$id;->social_privacy_terms:I

    invoke-virtual {v13, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 526
    sget v11, Lcm/aptoide/pt/v8engine/R$id;->social_text_privacy:I

    invoke-virtual {v13, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 528
    const/high16 v14, 0x41000000    # 8.0f

    invoke-virtual {v1, v14}, Landroid/support/v7/widget/CardView;->setRadius(F)V

    .line 529
    const/high16 v14, 0x41200000    # 10.0f

    invoke-virtual {v1, v14}, Landroid/support/v7/widget/CardView;->setCardElevation(F)V

    .line 530
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 531
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 532
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 533
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 535
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->setVisibility(I)V

    .line 536
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 538
    invoke-virtual {v12, v13}, Landroid/support/v7/a/d$a;->b(Landroid/view/View;)Landroid/support/v7/a/d$a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/a/d$a;->a(Z)Landroid/support/v7/a/d$a;

    .line 539
    sget v1, Lcm/aptoide/pt/v8engine/R$string;->social_timeline_you_will_share:I

    invoke-virtual {v12, v1}, Landroid/support/v7/a/d$a;->a(I)Landroid/support/v7/a/d$a;

    .line 541
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getUserData()Lcm/aptoide/accountmanager/util/UserCompleteData;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getUserRepo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v1, p0

    move-object/from16 v2, p1

    .line 542
    invoke-direct/range {v1 .. v6}, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->setCardHeader(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 544
    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->getUserAccessConfirmed()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 545
    invoke-static {v9}, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$3;->lambdaFactory$(Landroid/widget/CheckBox;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 546
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 547
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 548
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 549
    invoke-direct {p0, v4, v6, v9, v10}, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->handlePrivacyCheckBoxChanges(Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/CheckBox;Landroid/widget/LinearLayout;)V

    .line 552
    :cond_0
    return-object v12
.end method

.method public getPreviewDialogBuilder(Landroid/content/Context;)Landroid/support/v7/a/d$a;
    .locals 14

    .prologue
    .line 63
    new-instance v12, Landroid/support/v7/a/d$a;

    invoke-direct {v12, p1}, Landroid/support/v7/a/d$a;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 65
    const/4 v0, 0x0

    .line 72
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    instance-of v1, v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/ArticleDisplayable;

    if-eqz v1, :cond_1

    .line 73
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->displayable_social_timeline_social_article_preview:I

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 74
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->partial_social_timeline_thumbnail_title:I

    .line 75
    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 76
    sget v1, Lcm/aptoide/pt/v8engine/R$id;->partial_social_timeline_thumbnail_image:I

    .line 77
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 78
    sget v2, Lcm/aptoide/pt/v8engine/R$id;->partial_social_timeline_thumbnail_related_to:I

    .line 79
    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 81
    iget-object v3, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    check-cast v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/ArticleDisplayable;

    invoke-virtual {v3}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/ArticleDisplayable;->getArticleTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    invoke-static {p1}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v2

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/ArticleDisplayable;

    .line 84
    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/ArticleDisplayable;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lcm/aptoide/pt/imageloader/ImageLoader;->load(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    move-object v11, v4

    .line 320
    :goto_0
    if-eqz v11, :cond_0

    .line 321
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->card_title:I

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 322
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->card_subtitle:I

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 323
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->card_image:I

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 324
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->card_user_avatar:I

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 325
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->social_preview_checkbox:I

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/CheckBox;

    .line 326
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->social_privacy_terms:I

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/LinearLayout;

    .line 327
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->social_text_privacy:I

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    .line 328
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->card:I

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    .line 329
    sget v1, Lcm/aptoide/pt/v8engine/R$id;->social_like:I

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 330
    sget v9, Lcm/aptoide/pt/v8engine/R$id;->social_like_button:I

    invoke-virtual {v11, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;

    .line 331
    sget v10, Lcm/aptoide/pt/v8engine/R$id;->social_comment:I

    invoke-virtual {v11, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 333
    const/high16 v13, 0x41000000    # 8.0f

    invoke-virtual {v0, v13}, Landroid/support/v7/widget/CardView;->setRadius(F)V

    .line 334
    const/high16 v13, 0x41200000    # 10.0f

    invoke-virtual {v0, v13}, Landroid/support/v7/widget/CardView;->setCardElevation(F)V

    .line 335
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 337
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 338
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 340
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lcm/aptoide/pt/v8engine/customviews/LikeButtonView;->setVisibility(I)V

    .line 341
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 343
    invoke-virtual {v12, v11}, Landroid/support/v7/a/d$a;->b(Landroid/view/View;)Landroid/support/v7/a/d$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/a/d$a;->a(Z)Landroid/support/v7/a/d$a;

    .line 344
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->social_timeline_you_will_share:I

    invoke-virtual {v12, v0}, Landroid/support/v7/a/d$a;->a(I)Landroid/support/v7/a/d$a;

    .line 346
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    instance-of v0, v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialCardDisplayable;

    if-nez v0, :cond_e

    .line 347
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getUserData()Lcm/aptoide/accountmanager/util/UserCompleteData;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getUserRepo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, p0

    move-object v1, p1

    .line 348
    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->setCardHeader(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 354
    :goto_1
    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->getUserAccessConfirmed()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 355
    invoke-static {v6}, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$1;->lambdaFactory$(Landroid/widget/CheckBox;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 357
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 358
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 359
    invoke-direct {p0, v3, v5, v6, v7}, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->handlePrivacyCheckBoxChanges(Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/CheckBox;Landroid/widget/LinearLayout;)V

    .line 362
    :cond_0
    return-object v12

    .line 85
    :cond_1
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    instance-of v1, v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/VideoDisplayable;

    if-eqz v1, :cond_2

    .line 86
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->displayable_social_timeline_social_video_preview:I

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 87
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->partial_social_timeline_thumbnail_title:I

    .line 88
    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 89
    sget v1, Lcm/aptoide/pt/v8engine/R$id;->partial_social_timeline_thumbnail_image:I

    .line 90
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 91
    sget v2, Lcm/aptoide/pt/v8engine/R$id;->partial_social_timeline_thumbnail_related_to:I

    .line 92
    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 93
    iget-object v3, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    check-cast v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/VideoDisplayable;

    invoke-virtual {v3}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/VideoDisplayable;->getVideoTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    invoke-static {p1}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v2

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/VideoDisplayable;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/VideoDisplayable;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lcm/aptoide/pt/imageloader/ImageLoader;->load(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    move-object v11, v4

    .line 97
    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    instance-of v1, v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/StoreLatestAppsDisplayable;

    if-eqz v1, :cond_4

    .line 98
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->displayable_social_timeline_social_store_latest_apps_preview:I

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 101
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->store_name:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 102
    sget v1, Lcm/aptoide/pt/v8engine/R$id;->social_shared_store_avatar:I

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 103
    sget v2, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_store_latest_apps_container:I

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 106
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 107
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 109
    iget-object v3, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    check-cast v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/StoreLatestAppsDisplayable;

    invoke-virtual {v3}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/StoreLatestAppsDisplayable;->getStoreName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-static {p1}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v3

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/StoreLatestAppsDisplayable;

    .line 111
    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/StoreLatestAppsDisplayable;->getAvatarUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v1}, Lcm/aptoide/pt/imageloader/ImageLoader;->loadWithShadowCircleTransform(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 115
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/StoreLatestAppsDisplayable;

    .line 116
    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/StoreLatestAppsDisplayable;->getLatestApps()Ljava/util/List;

    move-result-object v0

    .line 115
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/StoreLatestAppsDisplayable$LatestApp;

    .line 117
    sget v1, Lcm/aptoide/pt/v8engine/R$layout;->social_timeline_latest_app:I

    const/4 v8, 0x0

    .line 118
    invoke-virtual {v5, v1, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 119
    sget v1, Lcm/aptoide/pt/v8engine/R$id;->social_timeline_latest_app:I

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 120
    invoke-static {p1}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v9

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/StoreLatestAppsDisplayable$LatestApp;->getIconUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v1}, Lcm/aptoide/pt/imageloader/ImageLoader;->load(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 121
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 122
    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/StoreLatestAppsDisplayable$LatestApp;->getAppId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v6, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/StoreLatestAppsDisplayable$LatestApp;->getAppId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/StoreLatestAppsDisplayable$LatestApp;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    move-object v11, v4

    .line 125
    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    instance-of v1, v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;

    if-eqz v1, :cond_5

    .line 126
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->displayable_social_timeline_social_recommendation_preview:I

    const/4 v1, 0x0

    .line 127
    invoke-virtual {v5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 128
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_recommendation_icon:I

    .line 129
    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 130
    sget v1, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_recommendation_similar_apps:I

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 132
    sget v2, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_recommendation_name:I

    .line 133
    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 134
    sget v3, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_recommendation_get_app_button:I

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 136
    invoke-static {p1}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v6

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    check-cast v4, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;

    .line 137
    invoke-virtual {v4}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->getAppIcon()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4, v0}, Lcm/aptoide/pt/imageloader/ImageLoader;->load(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 138
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/RecommendationDisplayable;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->displayable_social_timeline_recommendation_atptoide_team_recommends:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v6, ""

    aput-object v6, v1, v4

    invoke-static {v0, v1}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getFormattedString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;-><init>()V

    .line 144
    sget v1, Lcm/aptoide/pt/v8engine/R$string;->displayable_social_timeline_article_get_app_button:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v6, ""

    aput-object v6, v2, v4

    .line 145
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcm/aptoide/pt/v8engine/R$color;->appstimeline_grey:I

    .line 146
    invoke-static {p1, v2}, Landroid/support/v4/content/b;->c(Landroid/content/Context;I)I

    move-result v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, ""

    aput-object v7, v4, v6

    .line 144
    invoke-virtual {v0, v1, v2, v4}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;->createColorSpan(Ljava/lang/String;I[Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v11, v5

    .line 147
    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    instance-of v1, v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;

    if-eqz v1, :cond_6

    .line 148
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->displayable_social_timeline_social_recommendation_preview:I

    const/4 v1, 0x0

    .line 149
    invoke-virtual {v5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 150
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_recommendation_icon:I

    .line 151
    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 152
    sget v1, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_recommendation_similar_apps:I

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 154
    sget v2, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_recommendation_name:I

    .line 155
    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 156
    sget v3, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_recommendation_get_app_button:I

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 158
    invoke-static {p1}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v6

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    check-cast v4, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;

    invoke-virtual {v4}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->getAppIconUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4, v0}, Lcm/aptoide/pt/imageloader/ImageLoader;->load(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 159
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/AppUpdateDisplayable;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->displayable_social_timeline_recommendation_atptoide_team_recommends:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v6, ""

    aput-object v6, v1, v4

    invoke-static {v0, v1}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getFormattedString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;-><init>()V

    .line 165
    sget v1, Lcm/aptoide/pt/v8engine/R$string;->displayable_social_timeline_article_get_app_button:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v6, ""

    aput-object v6, v2, v4

    .line 166
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcm/aptoide/pt/v8engine/R$color;->appstimeline_grey:I

    .line 167
    invoke-static {p1, v2}, Landroid/support/v4/content/b;->c(Landroid/content/Context;I)I

    move-result v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, ""

    aput-object v7, v4, v6

    .line 165
    invoke-virtual {v0, v1, v2, v4}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;->createColorSpan(Ljava/lang/String;I[Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v11, v5

    .line 168
    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    instance-of v1, v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SimilarDisplayable;

    if-eqz v1, :cond_7

    .line 169
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->displayable_social_timeline_social_recommendation_preview:I

    const/4 v1, 0x0

    .line 170
    invoke-virtual {v5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 171
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_recommendation_icon:I

    .line 172
    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 173
    sget v1, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_recommendation_similar_apps:I

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 175
    sget v2, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_recommendation_name:I

    .line 176
    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 177
    sget v3, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_recommendation_get_app_button:I

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 179
    invoke-static {p1}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v6

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    check-cast v4, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SimilarDisplayable;

    invoke-virtual {v4}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SimilarDisplayable;->getAppIcon()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4, v0}, Lcm/aptoide/pt/imageloader/ImageLoader;->load(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 180
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SimilarDisplayable;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SimilarDisplayable;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->displayable_social_timeline_recommendation_atptoide_team_recommends:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v6, ""

    aput-object v6, v1, v4

    invoke-static {v0, v1}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getFormattedString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;-><init>()V

    .line 186
    sget v1, Lcm/aptoide/pt/v8engine/R$string;->displayable_social_timeline_article_get_app_button:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v6, ""

    aput-object v6, v2, v4

    .line 187
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcm/aptoide/pt/v8engine/R$color;->appstimeline_grey:I

    .line 188
    invoke-static {p1, v2}, Landroid/support/v4/content/b;->c(Landroid/content/Context;I)I

    move-result v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, ""

    aput-object v7, v4, v6

    .line 186
    invoke-virtual {v0, v1, v2, v4}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;->createColorSpan(Ljava/lang/String;I[Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v11, v5

    .line 189
    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    instance-of v1, v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;

    if-eqz v1, :cond_8

    .line 190
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->displayable_social_timeline_social_install_preview:I

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 191
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_recommendation_icon:I

    .line 192
    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 193
    sget v1, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_recommendation_similar_apps:I

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 195
    sget v2, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_recommendation_name:I

    .line 196
    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 197
    sget v3, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_recommendation_get_app_button:I

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 199
    invoke-static {p1}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v6

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    check-cast v4, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;

    .line 200
    invoke-virtual {v4}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcm/aptoide/pt/model/v7/GetApp;

    .line 201
    invoke-virtual {v4}, Lcm/aptoide/pt/model/v7/GetApp;->getNodes()Lcm/aptoide/pt/model/v7/GetApp$Nodes;

    move-result-object v4

    .line 202
    invoke-virtual {v4}, Lcm/aptoide/pt/model/v7/GetApp$Nodes;->getMeta()Lcm/aptoide/pt/model/v7/GetAppMeta;

    move-result-object v4

    .line 203
    invoke-virtual {v4}, Lcm/aptoide/pt/model/v7/GetAppMeta;->getData()Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    move-result-object v4

    .line 204
    invoke-virtual {v4}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getIcon()Ljava/lang/String;

    move-result-object v4

    .line 200
    invoke-virtual {v6, v4, v0}, Lcm/aptoide/pt/imageloader/ImageLoader;->load(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 205
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewInstallDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/GetApp;

    .line 206
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetApp;->getNodes()Lcm/aptoide/pt/model/v7/GetApp$Nodes;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetApp$Nodes;->getMeta()Lcm/aptoide/pt/model/v7/GetAppMeta;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta;->getData()Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getName()Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->social_timeline_share_dialog_installed_and_recommended:I

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 212
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;-><init>()V

    .line 214
    sget v1, Lcm/aptoide/pt/v8engine/R$string;->displayable_social_timeline_article_get_app_button:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v6, ""

    aput-object v6, v2, v4

    .line 215
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcm/aptoide/pt/v8engine/R$color;->appstimeline_grey:I

    .line 216
    invoke-static {p1, v2}, Landroid/support/v4/content/b;->c(Landroid/content/Context;I)I

    move-result v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, ""

    aput-object v7, v4, v6

    .line 214
    invoke-virtual {v0, v1, v2, v4}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;->createColorSpan(Ljava/lang/String;I[Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v11, v5

    .line 217
    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    instance-of v1, v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;

    if-eqz v1, :cond_9

    .line 218
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->displayable_social_timeline_social_article_preview:I

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 219
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->partial_social_timeline_thumbnail_title:I

    .line 220
    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 221
    sget v1, Lcm/aptoide/pt/v8engine/R$id;->partial_social_timeline_thumbnail_image:I

    .line 222
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 223
    sget v2, Lcm/aptoide/pt/v8engine/R$id;->partial_social_timeline_thumbnail_related_to:I

    .line 224
    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 225
    iget-object v3, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    check-cast v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;

    invoke-virtual {v3}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->getArticleTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    invoke-static {p1}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v2

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;

    .line 229
    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialArticleDisplayable;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lcm/aptoide/pt/imageloader/ImageLoader;->load(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    move-object v11, v4

    .line 230
    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    instance-of v1, v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;

    if-eqz v1, :cond_a

    .line 231
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->displayable_social_timeline_social_video_preview:I

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 232
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->partial_social_timeline_thumbnail_title:I

    .line 233
    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 234
    sget v1, Lcm/aptoide/pt/v8engine/R$id;->partial_social_timeline_thumbnail_image:I

    .line 235
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 236
    sget v2, Lcm/aptoide/pt/v8engine/R$id;->partial_social_timeline_thumbnail_related_to:I

    .line 237
    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 238
    iget-object v3, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    check-cast v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;

    invoke-virtual {v3}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;->getVideoTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    invoke-static {p1}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v2

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;

    .line 243
    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialVideoDisplayable;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lcm/aptoide/pt/imageloader/ImageLoader;->load(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    move-object v11, v4

    .line 244
    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    instance-of v1, v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;

    if-eqz v1, :cond_b

    .line 245
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->displayable_social_timeline_social_recommendation_preview:I

    const/4 v1, 0x0

    .line 246
    invoke-virtual {v5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 247
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_recommendation_icon:I

    .line 248
    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 249
    sget v1, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_recommendation_similar_apps:I

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 251
    sget v2, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_recommendation_name:I

    .line 252
    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 254
    sget v3, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_recommendation_get_app_button:I

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 256
    invoke-static {p1}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v6

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    check-cast v4, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;

    .line 257
    invoke-virtual {v4}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;->getAppIcon()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4, v0}, Lcm/aptoide/pt/imageloader/ImageLoader;->load(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 258
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialRecommendationDisplayable;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->displayable_social_timeline_recommendation_atptoide_team_recommends:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v6, ""

    aput-object v6, v1, v4

    invoke-static {v0, v1}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getFormattedString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;-><init>()V

    .line 264
    sget v1, Lcm/aptoide/pt/v8engine/R$string;->displayable_social_timeline_article_get_app_button:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v6, ""

    aput-object v6, v2, v4

    .line 265
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcm/aptoide/pt/v8engine/R$color;->appstimeline_grey:I

    .line 266
    invoke-static {p1, v2}, Landroid/support/v4/content/b;->c(Landroid/content/Context;I)I

    move-result v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, ""

    aput-object v7, v4, v6

    .line 264
    invoke-virtual {v0, v1, v2, v4}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;->createColorSpan(Ljava/lang/String;I[Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v11, v5

    .line 267
    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    instance-of v1, v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;

    if-eqz v1, :cond_d

    .line 268
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->displayable_social_timeline_social_store_latest_apps_preview:I

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 270
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->store_name:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 271
    sget v1, Lcm/aptoide/pt/v8engine/R$id;->social_shared_store_avatar:I

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 272
    sget v2, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_store_latest_apps_container:I

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 275
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 276
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 278
    iget-object v3, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    check-cast v3, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;

    .line 279
    invoke-virtual {v3}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->getSharedStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/store/Store;->getName()Ljava/lang/String;

    move-result-object v3

    .line 278
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    invoke-static {p1}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v3

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;

    .line 282
    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->getSharedStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/Store;->getAvatar()Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-virtual {v3, v0, v1}, Lcm/aptoide/pt/imageloader/ImageLoader;->loadWithShadowCircleTransform(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 286
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;

    .line 287
    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable;->getLatestApps()Ljava/util/List;

    move-result-object v0

    .line 286
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable$LatestApp;

    .line 288
    sget v1, Lcm/aptoide/pt/v8engine/R$layout;->social_timeline_latest_app:I

    const/4 v8, 0x0

    .line 289
    invoke-virtual {v5, v1, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 290
    sget v1, Lcm/aptoide/pt/v8engine/R$id;->social_timeline_latest_app:I

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 291
    invoke-static {p1}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v9

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable$LatestApp;->getIconUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v1}, Lcm/aptoide/pt/imageloader/ImageLoader;->load(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 292
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 293
    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable$LatestApp;->getAppId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v6, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable$LatestApp;->getAppId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialStoreLatestAppsDisplayable$LatestApp;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_c
    move-object v11, v4

    .line 296
    goto/16 :goto_0

    :cond_d
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    instance-of v1, v1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialInstallDisplayable;

    if-eqz v1, :cond_f

    .line 297
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->displayable_social_timeline_social_install_preview:I

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 299
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_recommendation_icon:I

    .line 300
    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 301
    sget v1, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_recommendation_similar_apps:I

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 303
    sget v2, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_recommendation_name:I

    .line 304
    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 305
    sget v3, Lcm/aptoide/pt/v8engine/R$id;->displayable_social_timeline_recommendation_get_app_button:I

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 307
    invoke-static {p1}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v6

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    check-cast v4, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialInstallDisplayable;

    .line 308
    invoke-virtual {v4}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialInstallDisplayable;->getAppIcon()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4, v0}, Lcm/aptoide/pt/imageloader/ImageLoader;->load(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 309
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->displayable:Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;

    check-cast v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialInstallDisplayable;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/timeline/SocialInstallDisplayable;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->displayable_social_timeline_recommendation_atptoide_team_recommends:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v6, ""

    aput-object v6, v1, v4

    invoke-static {v0, v1}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getFormattedString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;-><init>()V

    .line 315
    sget v1, Lcm/aptoide/pt/v8engine/R$string;->displayable_social_timeline_article_get_app_button:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v6, ""

    aput-object v6, v2, v4

    .line 316
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcm/aptoide/pt/v8engine/R$color;->appstimeline_grey:I

    .line 317
    invoke-static {p1, v2}, Landroid/support/v4/content/b;->c(Landroid/content/Context;I)I

    move-result v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, ""

    aput-object v7, v4, v6

    .line 315
    invoke-virtual {v0, v1, v2, v4}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/SpannableFactory;->createColorSpan(Ljava/lang/String;I[Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v11, v5

    goto/16 :goto_0

    .line 350
    :cond_e
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->social_shared_by:I

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 351
    invoke-direct {p0, p1, v0}, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->setSharedByText(Landroid/content/Context;Landroid/widget/TextView;)V

    move-object v0, p0

    move-object v1, p1

    .line 352
    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->setSocialCardHeader(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    goto/16 :goto_1

    :cond_f
    move-object v11, v0

    goto/16 :goto_0
.end method

.method public getPrivacyResult()Z
    .locals 1

    .prologue
    .line 598
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->privacyResult:Z

    return v0
.end method

.method synthetic lambda$handlePrivacyCheckBoxChanges$1(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x0

    .line 477
    if-eqz p4, :cond_0

    .line 478
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 479
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 480
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->privacyResult:Z

    .line 486
    :goto_0
    return-void

    .line 482
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 483
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 484
    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;->privacyResult:Z

    goto :goto_0
.end method

.method public showShareCardPreviewDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;Landroid/support/v7/a/d$a;Lcm/aptoide/pt/v8engine/repository/SocialRepository;)V
    .locals 2

    .prologue
    .line 558
    invoke-static {p5, p6, p1, p2, p4}, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$4;->lambdaFactory$(Landroid/support/v7/a/d$a;Lcm/aptoide/pt/v8engine/repository/SocialRepository;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog;)Lrx/d$a;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Lrx/d$a;)Lrx/d;

    move-result-object v0

    .line 584
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {p3}, Lcm/aptoide/pt/v8engine/dialog/SharePreviewDialog$$Lambda$5;->lambdaFactory$(Landroid/content/Context;)Lrx/b/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    .line 595
    return-void
.end method
