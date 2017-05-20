.class public interface abstract Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;
.super Ljava/lang/Object;
.source "FragmentProvider.java"


# virtual methods
.method public abstract newAppViewFragment(JLjava/lang/String;)Landroid/support/v4/app/Fragment;
.end method

.method public abstract newAppViewFragment(JLjava/lang/String;Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;)Landroid/support/v4/app/Fragment;
.end method

.method public abstract newAppViewFragment(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
.end method

.method public abstract newAppViewFragment(Lcm/aptoide/pt/database/realm/MinimalAd;)Landroid/support/v4/app/Fragment;
.end method

.method public abstract newAppViewFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
.end method

.method public abstract newAppViewFragment(Ljava/lang/String;Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;)Landroid/support/v4/app/Fragment;
.end method

.method public abstract newAppViewFragment(Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;)Landroid/support/v4/app/Fragment;
.end method

.method public abstract newAppsTimelineFragment(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
.end method

.method public abstract newCommentGridRecyclerFragment(Lcm/aptoide/pt/dataprovider/util/CommentType;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
.end method

.method public abstract newCommentGridRecyclerFragmentUrl(Lcm/aptoide/pt/dataprovider/util/CommentType;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
.end method

.method public abstract newCreateUserFragment()Landroid/support/v4/app/Fragment;
.end method

.method public abstract newDescriptionFragment(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
.end method

.method public abstract newDescriptionFragment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
.end method

.method public abstract newDownloadsFragment()Landroid/support/v4/app/Fragment;
.end method

.method public abstract newExcludedUpdatesFragment()Landroid/support/v4/app/Fragment;
.end method

.method public abstract newFragmentTopStores()Landroid/support/v4/app/Fragment;
.end method

.method public abstract newGetAdsFragment()Landroid/support/v4/app/Fragment;
.end method

.method public abstract newGetStoreFragment()Landroid/support/v4/app/Fragment;
.end method

.method public abstract newGetStoreWidgetsFragment()Landroid/support/v4/app/Fragment;
.end method

.method public abstract newHomeFragment(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
.end method

.method public abstract newLatestReviewsFragment(J)Landroid/support/v4/app/Fragment;
.end method

.method public abstract newListAppsFragment()Landroid/support/v4/app/Fragment;
.end method

.method public abstract newListReviewsFragment()Landroid/support/v4/app/Fragment;
.end method

.method public abstract newListStoresFragment()Landroid/support/v4/app/Fragment;
.end method

.method public abstract newMyStoresFragment()Landroid/support/v4/app/Fragment;
.end method

.method public abstract newMyStoresSubscribedFragment()Landroid/support/v4/app/Fragment;
.end method

.method public abstract newOtherVersionsFragment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
.end method

.method public abstract newRateAndReviewsFragment(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/support/v4/app/Fragment;
.end method

.method public abstract newRateAndReviewsFragment(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
.end method

.method public abstract newRollbackFragment()Landroid/support/v4/app/Fragment;
.end method

.method public abstract newScheduledDownloadsFragment()Landroid/support/v4/app/Fragment;
.end method

.method public abstract newScheduledDownloadsFragment(Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$OpenMode;)Landroid/support/v4/app/Fragment;
.end method

.method public abstract newScreenshotsViewerFragment(Ljava/util/ArrayList;I)Landroid/support/v4/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation
.end method

.method public abstract newSearchFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
.end method

.method public abstract newSearchFragment(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
.end method

.method public abstract newSearchFragment(Ljava/lang/String;Z)Landroid/support/v4/app/Fragment;
.end method

.method public abstract newSearchPagerTabFragment(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
.end method

.method public abstract newSearchPagerTabFragment(Ljava/lang/String;ZZ)Landroid/support/v4/app/Fragment;
.end method

.method public abstract newSendFeedbackFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
.end method

.method public abstract newSettingsFragment()Landroid/support/v4/app/Fragment;
.end method

.method public abstract newSocialFragment(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
.end method

.method public abstract newStoreFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
.end method

.method public abstract newStoreFragment(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;)Landroid/support/v4/app/Fragment;
.end method

.method public abstract newStoreFragment(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
.end method

.method public abstract newStoreFragment(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
.end method

.method public abstract newStoreTabGridRecyclerFragment(Lcm/aptoide/pt/model/v7/Event;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
.end method

.method public abstract newStoreTabGridRecyclerFragment(Lcm/aptoide/pt/model/v7/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
.end method

.method public abstract newSubscribedStoresFragment(Lcm/aptoide/pt/model/v7/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
.end method

.method public abstract newTimeLineFollowStatsFragment(Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;JLjava/lang/String;)Landroid/support/v4/app/Fragment;
.end method

.method public abstract newTimeLineFollowStatsFragment(Lcm/aptoide/pt/v8engine/fragment/implementations/TimeLineFollowFragment$FollowFragmentOpenMode;Ljava/lang/String;Ljava/lang/String;J)Landroid/support/v4/app/Fragment;
.end method

.method public abstract newUpdatesFragment()Landroid/support/v4/app/Fragment;
.end method
