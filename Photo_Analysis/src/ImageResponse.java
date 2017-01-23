

import java.util.ArrayList;
import java.util.List;



public class ImageResponse {

    private String taggingId;
    private String image;
    private List<Tag> tags = new ArrayList<Tag>();

    /**
     * 
     * @return
     *     The taggingId
     */
    public String getTaggingId() {
        return taggingId;
    }

    /**
     * 
     * @param taggingId
     *     The tagging_id
     */
    public void setTaggingId(String taggingId) {
        this.taggingId = taggingId;
    }

    /**
     * 
     * @return
     *     The image
     */
    public String getImage() {
        return image;
    }

    /**
     * 
     * @param image
     *     The image
     */
    public void setImage(String image) {
        this.image = image;
    }

    /**
     * 
     * @return
     *     The tags
     */
    public List<Tag> getTags() {
        return tags;
    }

    /**
     * 
     * @param tags
     *     The tags
     */
    public void setTags(List<Tag> tags) {
        this.tags = tags;
    }


}
