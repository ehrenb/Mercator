.class public Lcom/localytics/android/InboxListItem;
.super Landroid/widget/LinearLayout;
.source "InboxListItem.java"


# instance fields
.field private mCampaignId:J

.field private mLoadDownloadedThumbnail:Z

.field private mLocalThumbnailUri:Landroid/net/Uri;

.field private mMessageReceiver:Landroid/content/BroadcastReceiver;

.field private mSummaryTextView:Landroid/widget/TextView;

.field private mThumbnailImageView:Landroid/widget/ImageView;

.field private mTimeTextView:Landroid/widget/TextView;

.field private mTitleTextView:Landroid/widget/TextView;

.field private mUnreadIndicatorView:Lcom/localytics/android/UnreadIndicatorView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/localytics/android/InboxListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    invoke-direct {p0}, Lcom/localytics/android/InboxListItem;->initViews()V

    .line 59
    new-instance v0, Lcom/localytics/android/InboxListItem$1;

    invoke-direct {v0, p0}, Lcom/localytics/android/InboxListItem$1;-><init>(Lcom/localytics/android/InboxListItem;)V

    iput-object v0, p0, Lcom/localytics/android/InboxListItem;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/localytics/android/InboxListItem;)J
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/localytics/android/InboxListItem;->mCampaignId:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/localytics/android/InboxListItem;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/localytics/android/InboxListItem;->mLocalThumbnailUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Lcom/localytics/android/InboxListItem;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/localytics/android/InboxListItem;->loadThumbnail(Landroid/net/Uri;)V

    return-void
.end method

.method private capitalizeFirstCharacter(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 329
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 333
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 335
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 338
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 341
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initViews()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 252
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/localytics/android/InboxListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/localytics/android/Utils;->dpToPx(ILandroid/content/Context;)I

    move-result v0

    .line 253
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/localytics/android/InboxListItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/localytics/android/Utils;->dpToPx(ILandroid/content/Context;)I

    move-result v1

    .line 254
    invoke-virtual {p0}, Lcom/localytics/android/InboxListItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/localytics/android/Utils;->dpToPx(ILandroid/content/Context;)I

    move-result v2

    .line 255
    const/16 v3, 0x32

    invoke-virtual {p0}, Lcom/localytics/android/InboxListItem;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/localytics/android/Utils;->dpToPx(ILandroid/content/Context;)I

    move-result v3

    .line 257
    invoke-virtual {p0, v6}, Lcom/localytics/android/InboxListItem;->setOrientation(I)V

    .line 258
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/localytics/android/InboxListItem;->setPadding(IIII)V

    .line 259
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v4, v8, v7}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4}, Lcom/localytics/android/InboxListItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    new-instance v4, Lcom/localytics/android/UnreadIndicatorView;

    invoke-virtual {p0}, Lcom/localytics/android/InboxListItem;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/localytics/android/UnreadIndicatorView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/localytics/android/InboxListItem;->mUnreadIndicatorView:Lcom/localytics/android/UnreadIndicatorView;

    .line 265
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 266
    invoke-virtual {v4, v6, v0, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 267
    iget-object v5, p0, Lcom/localytics/android/InboxListItem;->mUnreadIndicatorView:Lcom/localytics/android/UnreadIndicatorView;

    invoke-virtual {v5, v4}, Lcom/localytics/android/UnreadIndicatorView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    iget-object v4, p0, Lcom/localytics/android/InboxListItem;->mUnreadIndicatorView:Lcom/localytics/android/UnreadIndicatorView;

    invoke-virtual {p0, v4}, Lcom/localytics/android/InboxListItem;->addView(Landroid/view/View;)V

    .line 270
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/localytics/android/InboxListItem;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/localytics/android/InboxListItem;->mThumbnailImageView:Landroid/widget/ImageView;

    .line 271
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 272
    invoke-virtual {v4, v6, v6, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 273
    iget-object v0, p0, Lcom/localytics/android/InboxListItem;->mThumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    iget-object v0, p0, Lcom/localytics/android/InboxListItem;->mThumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/localytics/android/InboxListItem;->addView(Landroid/view/View;)V

    .line 276
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/localytics/android/InboxListItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 277
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 278
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v6, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/localytics/android/InboxListItem;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/localytics/android/InboxListItem;->mTitleTextView:Landroid/widget/TextView;

    .line 285
    iget-object v3, p0, Lcom/localytics/android/InboxListItem;->mTitleTextView:Landroid/widget/TextView;

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v3, v9, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 286
    iget-object v3, p0, Lcom/localytics/android/InboxListItem;->mTitleTextView:Landroid/widget/TextView;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 287
    iget-object v3, p0, Lcom/localytics/android/InboxListItem;->mTitleTextView:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    iget-object v3, p0, Lcom/localytics/android/InboxListItem;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 293
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/localytics/android/InboxListItem;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/localytics/android/InboxListItem;->mSummaryTextView:Landroid/widget/TextView;

    .line 294
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 298
    invoke-virtual {v3, v6, v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 299
    iget-object v4, p0, Lcom/localytics/android/InboxListItem;->mSummaryTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    iget-object v3, p0, Lcom/localytics/android/InboxListItem;->mSummaryTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 301
    invoke-virtual {p0, v0}, Lcom/localytics/android/InboxListItem;->addView(Landroid/view/View;)V

    .line 303
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/localytics/android/InboxListItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/localytics/android/InboxListItem;->mTimeTextView:Landroid/widget/TextView;

    .line 304
    iget-object v0, p0, Lcom/localytics/android/InboxListItem;->mTimeTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v0, v9, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 305
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 309
    invoke-virtual {v0, v1, v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 310
    iget-object v1, p0, Lcom/localytics/android/InboxListItem;->mTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    iget-object v0, p0, Lcom/localytics/android/InboxListItem;->mTimeTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/localytics/android/InboxListItem;->addView(Landroid/view/View;)V

    .line 312
    return-void
.end method

.method private loadThumbnail(Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 316
    if-eqz p1, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/localytics/android/InboxListItem;->mThumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 324
    :goto_0
    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/localytics/android/InboxListItem;->mThumbnailImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private setThumbnailImage(ZLandroid/net/Uri;)V
    .locals 2

    .prologue
    .line 160
    iput-object p2, p0, Lcom/localytics/android/InboxListItem;->mLocalThumbnailUri:Landroid/net/Uri;

    .line 161
    if-eqz p1, :cond_0

    .line 163
    iget-object v0, p0, Lcom/localytics/android/InboxListItem;->mThumbnailImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    invoke-direct {p0, p2}, Lcom/localytics/android/InboxListItem;->loadThumbnail(Landroid/net/Uri;)V

    .line 170
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/localytics/android/InboxListItem;->mThumbnailImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getSummaryTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/localytics/android/InboxListItem;->mSummaryTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getThumbnailImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/localytics/android/InboxListItem;->mThumbnailImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTimeTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/localytics/android/InboxListItem;->mTimeTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/localytics/android/InboxListItem;->mTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getUnreadIndicatorView()Lcom/localytics/android/UnreadIndicatorView;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/localytics/android/InboxListItem;->mUnreadIndicatorView:Lcom/localytics/android/UnreadIndicatorView;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 231
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 232
    iget-boolean v0, p0, Lcom/localytics/android/InboxListItem;->mLoadDownloadedThumbnail:Z

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/localytics/android/InboxListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/k;->a(Landroid/content/Context;)Landroid/support/v4/content/k;

    move-result-object v0

    iget-object v1, p0, Lcom/localytics/android/InboxListItem;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.localytics.intent.action.THUMBNAIL_DOWNLOADED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/k;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 236
    iget-object v0, p0, Lcom/localytics/android/InboxListItem;->mLocalThumbnailUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/localytics/android/InboxListItem;->loadThumbnail(Landroid/net/Uri;)V

    .line 238
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 243
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 244
    iget-boolean v0, p0, Lcom/localytics/android/InboxListItem;->mLoadDownloadedThumbnail:Z

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/localytics/android/InboxListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/k;->a(Landroid/content/Context;)Landroid/support/v4/content/k;

    move-result-object v0

    iget-object v1, p0, Lcom/localytics/android/InboxListItem;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/k;->a(Landroid/content/BroadcastReceiver;)V

    .line 248
    :cond_0
    return-void
.end method

.method public populateViews(Lcom/localytics/android/InboxCampaign;Z)V
    .locals 2

    .prologue
    .line 211
    iput-boolean p2, p0, Lcom/localytics/android/InboxListItem;->mLoadDownloadedThumbnail:Z

    .line 212
    invoke-virtual {p1}, Lcom/localytics/android/InboxCampaign;->getCampaignId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/localytics/android/InboxListItem;->setCampaignId(J)V

    .line 213
    invoke-virtual {p1}, Lcom/localytics/android/InboxCampaign;->isRead()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/InboxListItem;->setUnreadState(Z)V

    .line 214
    if-eqz p2, :cond_0

    .line 216
    invoke-virtual {p1}, Lcom/localytics/android/InboxCampaign;->hasThumbnail()Z

    move-result v0

    invoke-virtual {p1}, Lcom/localytics/android/InboxCampaign;->getLocalThumbnailUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/localytics/android/InboxListItem;->setThumbnailImage(ZLandroid/net/Uri;)V

    .line 218
    :cond_0
    invoke-virtual {p1}, Lcom/localytics/android/InboxCampaign;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/InboxListItem;->setTitle(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p1}, Lcom/localytics/android/InboxCampaign;->getSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/InboxListItem;->setSummary(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p1}, Lcom/localytics/android/InboxCampaign;->getReceivedDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/InboxListItem;->setTime(Ljava/util/Date;)V

    .line 221
    return-void
.end method

.method protected setCampaignId(J)V
    .locals 1

    .prologue
    .line 225
    iput-wide p1, p0, Lcom/localytics/android/InboxListItem;->mCampaignId:J

    .line 226
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 109
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/localytics/android/InboxListItem;->mSummaryTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/localytics/android/InboxListItem;->mSummaryTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/localytics/android/InboxListItem;->mSummaryTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTime(Ljava/util/Date;)V
    .locals 7

    .prologue
    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 139
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/32 v4, 0xea60

    const/high16 v6, 0x80000

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/localytics/android/InboxListItem;->mTimeTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/localytics/android/InboxListItem;->capitalizeFirstCharacter(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/localytics/android/InboxListItem;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    return-void
.end method

.method public setUnreadState(Z)V
    .locals 2

    .prologue
    .line 192
    if-eqz p1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/localytics/android/InboxListItem;->mUnreadIndicatorView:Lcom/localytics/android/UnreadIndicatorView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/localytics/android/UnreadIndicatorView;->setVisibility(I)V

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/localytics/android/InboxListItem;->mUnreadIndicatorView:Lcom/localytics/android/UnreadIndicatorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/localytics/android/UnreadIndicatorView;->setVisibility(I)V

    goto :goto_0
.end method
