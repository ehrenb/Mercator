.class final Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$ComunityRatingBar;
.super Ljava/lang/Object;
.source "AppViewRateThisWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ComunityRatingBar"
.end annotation


# instance fields
.field private appview_rating_bar1:Landroid/widget/ProgressBar;

.field private appview_rating_bar2:Landroid/widget/ProgressBar;

.field private appview_rating_bar3:Landroid/widget/ProgressBar;

.field private appview_rating_bar4:Landroid/widget/ProgressBar;

.field private appview_rating_bar5:Landroid/widget/ProgressBar;

.field private appview_rating_bar_rating_number1:Landroid/widget/TextView;

.field private appview_rating_bar_rating_number2:Landroid/widget/TextView;

.field private appview_rating_bar_rating_number3:Landroid/widget/TextView;

.field private appview_rating_bar_rating_number4:Landroid/widget/TextView;

.field private appview_rating_bar_rating_number5:Landroid/widget/TextView;

.field private appview_rating_bar_star1:Landroid/widget/ImageView;

.field private appview_rating_bar_star2:Landroid/widget/ImageView;

.field private appview_rating_bar_star3:Landroid/widget/ImageView;

.field private appview_rating_bar_star4:Landroid/widget/ImageView;

.field private appview_rating_bar_star5:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->appview_rating_bar_star5:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$ComunityRatingBar;->appview_rating_bar_star5:Landroid/widget/ImageView;

    .line 226
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->appview_rating_bar5:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$ComunityRatingBar;->appview_rating_bar5:Landroid/widget/ProgressBar;

    .line 227
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->appview_rating_bar_rating_number5:I

    .line 228
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$ComunityRatingBar;->appview_rating_bar_rating_number5:Landroid/widget/TextView;

    .line 230
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->appview_rating_bar_star4:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$ComunityRatingBar;->appview_rating_bar_star4:Landroid/widget/ImageView;

    .line 231
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->appview_rating_bar4:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$ComunityRatingBar;->appview_rating_bar4:Landroid/widget/ProgressBar;

    .line 232
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->appview_rating_bar_rating_number4:I

    .line 233
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$ComunityRatingBar;->appview_rating_bar_rating_number4:Landroid/widget/TextView;

    .line 235
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->appview_rating_bar_star3:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$ComunityRatingBar;->appview_rating_bar_star3:Landroid/widget/ImageView;

    .line 236
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->appview_rating_bar3:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$ComunityRatingBar;->appview_rating_bar3:Landroid/widget/ProgressBar;

    .line 237
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->appview_rating_bar_rating_number3:I

    .line 238
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$ComunityRatingBar;->appview_rating_bar_rating_number3:Landroid/widget/TextView;

    .line 240
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->appview_rating_bar_star2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$ComunityRatingBar;->appview_rating_bar_star2:Landroid/widget/ImageView;

    .line 241
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->appview_rating_bar2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$ComunityRatingBar;->appview_rating_bar2:Landroid/widget/ProgressBar;

    .line 242
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->appview_rating_bar_rating_number2:I

    .line 243
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$ComunityRatingBar;->appview_rating_bar_rating_number2:Landroid/widget/TextView;

    .line 245
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->appview_rating_bar_star1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$ComunityRatingBar;->appview_rating_bar_star1:Landroid/widget/ImageView;

    .line 246
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->appview_rating_bar1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$ComunityRatingBar;->appview_rating_bar1:Landroid/widget/ProgressBar;

    .line 247
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->appview_rating_bar_rating_number1:I

    .line 248
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$ComunityRatingBar;->appview_rating_bar_rating_number1:Landroid/widget/TextView;

    .line 249
    return-void
.end method

.method private bindViewForBar(III)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 268
    .line 269
    packed-switch p2, :pswitch_data_0

    move v0, v1

    .line 281
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 283
    packed-switch p1, :pswitch_data_1

    .line 318
    :goto_1
    return-void

    .line 271
    :pswitch_0
    sget v0, Lcm/aptoide/pt/v8engine/R$drawable;->grid_item_star_empty_small:I

    goto :goto_0

    .line 274
    :pswitch_1
    sget v0, Lcm/aptoide/pt/v8engine/R$drawable;->grid_item_star_half_small:I

    goto :goto_0

    .line 277
    :pswitch_2
    sget v0, Lcm/aptoide/pt/v8engine/R$drawable;->grid_item_star_full_small:I

    goto :goto_0

    .line 285
    :pswitch_3
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$ComunityRatingBar;->appview_rating_bar_star1:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 286
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$ComunityRatingBar;->appview_rating_bar1:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 287
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$ComunityRatingBar;->appview_rating_bar_rating_number1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 291
    :pswitch_4
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$ComunityRatingBar;->appview_rating_bar_star2:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 292
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$ComunityRatingBar;->appview_rating_bar2:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 293
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$ComunityRatingBar;->appview_rating_bar_rating_number2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 297
    :pswitch_5
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$ComunityRatingBar;->appview_rating_bar_star3:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 298
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$ComunityRatingBar;->appview_rating_bar3:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 299
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$ComunityRatingBar;->appview_rating_bar_rating_number3:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 303
    :pswitch_6
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$ComunityRatingBar;->appview_rating_bar_star4:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 304
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$ComunityRatingBar;->appview_rating_bar4:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 305
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$ComunityRatingBar;->appview_rating_bar_rating_number4:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 309
    :pswitch_7
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$ComunityRatingBar;->appview_rating_bar_star5:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 310
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$ComunityRatingBar;->appview_rating_bar5:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 311
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$ComunityRatingBar;->appview_rating_bar_rating_number5:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 283
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public bindView(Lcm/aptoide/pt/model/v7/GetApp;)V
    .locals 4

    .prologue
    .line 254
    :try_start_0
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetApp;->getNodes()Lcm/aptoide/pt/model/v7/GetApp$Nodes;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetApp$Nodes;->getMeta()Lcm/aptoide/pt/model/v7/GetAppMeta;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta;->getData()Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getStats()Lcm/aptoide/pt/model/v7/GetAppMeta$Stats;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$Stats;->getRating()Lcm/aptoide/pt/model/v7/GetAppMeta$Stats$Rating;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$Stats$Rating;->getVotes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/GetAppMeta$Stats$Rating$Vote;

    .line 257
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$Stats$Rating$Vote;->getValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$Stats$Rating$Vote;->getCount()I

    move-result v0

    invoke-direct {p0, v2, v3, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$ComunityRatingBar;->bindViewForBar(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 262
    :cond_0
    return-void
.end method
